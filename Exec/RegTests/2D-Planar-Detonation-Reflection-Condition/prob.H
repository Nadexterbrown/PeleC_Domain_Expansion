#ifndef PROB_H
#define PROB_H

#include <AMReX_ParmParse.H>
#include <AMReX_Geometry.H>
#include <AMReX_FArrayBox.H>
#include <AMReX_REAL.H>
#include <AMReX_GpuMemory.H>

#include "PeleC.H"
#include "IndexDefines.H"
#include "PelePhysics.H"
#include "Tagging.H"
#include "ProblemSpecificFunctions.H"
#include "prob_parm.H"
#include "Constants.H"

AMREX_GPU_HOST_DEVICE
AMREX_FORCE_INLINE
void
pmf(
  const amrex::Real xlo,
  const amrex::Real xhi,
  amrex::GpuArray<amrex::Real, NUM_SPECIES + 4>& y_vector,
  const ProbParmDevice& prob_parm)
{
  //amrex::Print() << "-------------------------------------" << std::endl;
  //amrex::Print() << xlo << " PMF xlo" << std::endl;
  //amrex::Print() << xhi << " PMF xhi" << std::endl;
  if (prob_parm.pmf_do_average) {
    int lo_loside = 0;
    int lo_hiside = 0;
    int hi_loside = 0;
    int hi_hiside = 0;
    if (xlo < prob_parm.d_pmf_X[0]) {
      lo_loside = 0;
      lo_hiside = 0;
    }
    if (xhi < prob_parm.d_pmf_X[0]) {
      hi_loside = 0;
      hi_hiside = 0;
    }
    if (xlo > prob_parm.d_pmf_X[prob_parm.pmf_N - 1]) {
      lo_loside = prob_parm.pmf_N - 1;
      lo_hiside = prob_parm.pmf_N - 1;
    }
    if (xhi > prob_parm.d_pmf_X[prob_parm.pmf_N - 1]) {
      hi_loside = prob_parm.pmf_N - 1;
      hi_hiside = prob_parm.pmf_N - 1;
    }
    if (lo_loside == 0) {
      for (int i = 0; i < prob_parm.pmf_N - 1; i++) {
        if ((xlo > prob_parm.d_pmf_X[i]) && (xlo < prob_parm.d_pmf_X[i + 1])) {
          lo_loside = i;
          lo_hiside = i + 1;
        }
      }
    }
    if (hi_loside == 0) {
      for (int i = 0; i < prob_parm.pmf_N - 1; i++) {
        if ((xhi > prob_parm.d_pmf_X[i]) && (xhi < prob_parm.d_pmf_X[i + 1])) {
          hi_loside = i;
          hi_hiside = i + 1;
        }
      }
    }
    for (int j = 0; j < prob_parm.pmf_M; j++) {
      amrex::Real x1 = prob_parm.d_pmf_X[lo_loside];
      amrex::Real y1 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + lo_loside];
      amrex::Real x2 = prob_parm.d_pmf_X[lo_hiside];
      amrex::Real y2 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + lo_hiside];
      amrex::Real dydx = 0.0;
      if (lo_loside == lo_hiside) {
        dydx = 0.0;
      } else {
        dydx = (y2 - y1) / (x2 - x1);
      }
      amrex::Real ylo = y1 + dydx * (xlo - x1);
      amrex::Real yhi = 0.0;
      if (lo_loside == hi_loside) {
        yhi = y1 + dydx * (xhi - x1);
        y_vector[j] = 0.5 * (ylo + yhi);
      } else {
        amrex::Real sum = (x2 - xlo) * 0.5 * (ylo + y2);
        x1 = prob_parm.d_pmf_X[hi_loside];
        y1 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + hi_loside];
        x2 = prob_parm.d_pmf_X[hi_hiside];
        y2 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + hi_hiside];
        if (hi_loside == hi_hiside) {
          dydx = 0.0;
        } else {
          dydx = (y2 - y1) / (x2 - x1);
        }
        yhi = y1 + dydx * (xhi - x1);
        sum += (xhi - x1) * 0.5 * (yhi + y1);
        for (int k = lo_hiside; k < hi_loside - 1; k++) {
          sum += (prob_parm.d_pmf_X[k + 1] - prob_parm.d_pmf_X[k]) * 0.5 *
                 (prob_parm.d_pmf_Y[prob_parm.pmf_N * j + k] +
                  prob_parm.d_pmf_Y[prob_parm.pmf_N * j + k + 1]);
        }
        y_vector[j] = sum / (xhi - xlo);
      }
    }
  } else {
    amrex::Real xmid = 0.5 * (xlo + xhi);
    int loside = -1;
    int hiside = -1;
    if (xmid < prob_parm.d_pmf_X[0]) {
      loside = 0;
      hiside = 0;
    }
    if (xmid > prob_parm.d_pmf_X[prob_parm.pmf_N - 1]) {
      loside = prob_parm.pmf_N - 1;
      hiside = prob_parm.pmf_N - 1;
    }
    if (loside == -1) {
      for (int i = 0; i < prob_parm.pmf_N - 1; i++) {
        if (
          (xmid >= prob_parm.d_pmf_X[i]) &&
          (xmid <= prob_parm.d_pmf_X[i + 1])) {
          loside = i;
          hiside = i + 1;
        }
      }
    }
    //amrex::Print() << loside << " PMF Interp Low" << std::endl;
    //amrex::Print() << hiside << " PMF Interp High" << std::endl;
    for (int j = 0; j < prob_parm.pmf_M; j++) {
      const amrex::Real x1 = prob_parm.d_pmf_X[loside];
      const amrex::Real y1 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + loside];
      const amrex::Real x2 = prob_parm.d_pmf_X[hiside];
      const amrex::Real y2 = prob_parm.d_pmf_Y[prob_parm.pmf_N * j + hiside];
      amrex::Real dydx = 0.0;
      if (loside == hiside) {
        dydx = 0.0;
      } else {
        dydx = (y2 - y1) / (x2 - x1);
      }
      y_vector[j] = y1 + dydx * (xlo - x1);
      //amrex::Print() << x1 << "   PMF x1" << std::endl;
      //amrex::Print() << x2 << "   PMF x2" << std::endl;
      //amrex::Print() << y1 << "   PMF y1" << std::endl;
      //amrex::Print() << y2 << "   PMF y2" << std::endl;
      //amrex::Print() << y_vector[j] << "   PMF y_vector" << std::endl;
      //amrex::Print() << " " << std::endl;
    }
  }
}

// -------------------------- Domain Initilization -------------------------- //
AMREX_GPU_DEVICE
AMREX_FORCE_INLINE
void
pc_initdata(
  int i,
  int j,
  int k,
  amrex::Array4<amrex::Real> const& state,
  amrex::GeometryData const& geomdata,
  ProbParmDevice const& prob_parm)
{
  // ------------
  // GEOMETRY CONFIGURATION
  // ------------
  const amrex::Real* prob_lo = geomdata.ProbLo();
  const amrex::Real* dx = geomdata.CellSize();

  // Is this the setting up fo the spatial domain?
  const amrex::Real x = prob_lo[0] + (i + 0.5) * dx[0];
  const amrex::Real y = prob_lo[1] + (j + 0.5) * dx[1];
  const amrex::Real z = prob_lo[2] + (k + 0.5) * dx[2];

  //amrex::Print() << i << " x index" << std::endl;
  //amrex::Print() << j << " y index" << std::endl;
  //amrex::Print() << k << " z index" << std::endl;

  // ------------
  // SOLVER CONFIGURATION
  // ------------

  // Initialize the solution space for the thermodynamic paramters
  amrex::GpuArray<amrex::Real, NUM_SPECIES + 4> pmf_vals = {{0.0}};
  amrex::Real molefrac[NUM_SPECIES] = {0.0};    // Inialize the mole fractions
  amrex::Real massfrac[NUM_SPECIES] = {0.0};    // Inialize the mass fractions
  amrex::Real u[3] = {0.0};                     // Inialize the x-dir velocity
  amrex::Real rho = 0.0;
  amrex::Real energy = 0.0;

  // ------------
  // FLAME GEOMETERY (PERTURBATIONS, SEMI-CIRCLE, ETC.)
  // ------------
  constexpr amrex::Real Pi = 3.14159265358979323846264338327950288;
  // PLANAR FLAME
  amrex::Real pert = 0;
  // HEMISPHERICAL FLAME
  //amrex::Real pert = prob_parm.kernel_smoothing * sqrt(pow(prob_parm.kernel_radii, 2) - pow(y - prob_parm.kernel_position, 2));
  // ELONGATED FINGER FLAME
  //amrex::Real pert = prob_parm.kernel_radii * std::cos(prob_parm.kernel_width * y + prob_parm.kernel_position) * sqrt((1 + pow(prob_parm.kernel_smoothing, 2)) / (1 + pow(prob_parm.kernel_smoothing * std::cos(prob_parm.kernel_width * y + prob_parm.kernel_position), 2)));

  amrex::Real x1 = x + prob_parm.standoff + pert - 0.5 * dx[0];
  amrex::Real x2 = x + prob_parm.standoff + pert + 0.5 * dx[0];

  // ------------
  // PMF DATA LOADING
  // ------------

  // Load the PMF data and assign the flame state on either side of the flame
  // geometry
  pmf(x1, x2, pmf_vals, prob_parm);   // Load the PMF data
  //amrex::Print() << pmf_vals[0] << " PMF Temperature" << std::endl;
  //amrex::Print() << pmf_vals[1] << " PMF Velocity" << std::endl;

  // Set the gas composition using mole fractions
  for (int n = 0; n < NUM_SPECIES; n++){        // Set the gas mole fractions
    molefrac[n] = pmf_vals[3 + n];
  }

  // Set the thermodynamic properties in the domain according to the PMF solution
  const amrex::Real T = pmf_vals[0];             // Set the gas temperature
  const amrex::Real pres = pmf_vals[2];         // Set the pressure in the domain

  // Initialize and define the gas velocity within the domain
  if (prob_parm.quiescent) {
    u[0] = 0;    // Set the gas to be stationary everywhere
  } else {
    u[0] = pmf_vals[1];    // Adjust the index to correspond the the direction of the flow to the PMF solution
  }

  // Convert the molefactions to massfractions
  auto eos = pele::physics::PhysicsType::eos();
  eos.X2Y(molefrac, massfrac);                      // Convert the mole factions to mass fractions

  // Utilizing the equation of state determine the energy and density from the
  // pressure, gas composition (mass fraction), and temperature
  eos.PYT2RE(pres, massfrac, T, rho, energy);

  // Initialize the conservation fluxes (mass, momentum, and energy) throughout
  // the domain
  state(i, j, k, URHO)  = rho;
  state(i, j, k, UMX)   = rho * u[0];
  state(i, j, k, UMY)   = rho * u[1];
  state(i, j, k, UMZ)   = rho * u[2];
  state(i, j, k, UEINT) = rho * energy;
  state(i, j, k, UEDEN) = rho * (energy + 0.5 * (u[0] * u[0] + u[1] * u[1] + u[2] * u[2]));
  state(i, j, k, UTEMP) = T;
  for (int n = 0; n < NUM_SPECIES; n++) {
    state(i, j, k, UFS + n) = rho * massfrac[n];
  }
}

AMREX_GPU_DEVICE
AMREX_FORCE_INLINE
void
bcnormal(
  const amrex::Real y[AMREX_SPACEDIM],
  const amrex::Real s_int[NVAR],
  amrex::Real s_ext[NVAR],
  const int idir,
  const int sgn,
  const amrex::Real /*time*/,
  amrex::GeometryData const& geomdata,
  ProbParmDevice const& prob_parm,
  const amrex::GpuArray<amrex::Real, AMREX_SPACEDIM>& /*turb_fluc*/)
{
}

void pc_prob_close();

using ProblemSpecificFunctions = DefaultProblemSpecificFunctions;

#endif
