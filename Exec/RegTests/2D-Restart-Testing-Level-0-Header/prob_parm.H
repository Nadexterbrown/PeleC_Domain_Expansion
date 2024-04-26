#ifndef PROB_PARM_H
#define PROB_PARM_H

#include <AMReX_REAL.H>
#include <AMReX_GpuQualifiers.H>
#include <AMReX_GpuMemory.H>

struct ProbParmDevice
{
  // Thermodynamic State Input Values
  amrex::Real pamb = 101325.0 * 10;
  amrex::Real T_in = 298.0;
  //amrex::Real rho0 = 1.0;

  // Mixture Input Parameters
  //amrex::Real phi_in = -1.0;
  //amrex::GpuArray<amrex::Real, NUM_SPECIES> massfrac = {0.0};
  amrex::GpuArray<amrex::Real, NVAR> fuel_state = {{0.0}};

  // Flow Input Parameters
  amrex::Real vn_in = 0;
  bool quiescent = true;

  // Additional Flame Input Parameters
  amrex::Real standoff         = 1e-0;
  amrex::Real pertmag          = 0.0;
  amrex::Real kernel_radii     = 1e-0;
  amrex::Real kernel_width     = 4.0;
  amrex::Real kernel_position  = 1.14;
  amrex::Real kernel_smoothing = 1e-0;
  //amrex::Real A = 0.2;

  // PMF Input Parameters
  int pmf_N = 0;
  int pmf_M = 0;
  bool pmf_do_average = false;
  amrex::Real* d_pmf_X = nullptr;
  amrex::Real* d_pmf_Y = nullptr;

  // Spatial Domain Length
  amrex::GpuArray<amrex::Real, AMREX_SPACEDIM> L = {{1.0}};

  // Boundary Condition Parameters
  // Inlet types:
  //    0 - FOExtrap pressure (recommended)
  //    1 - Enforce constant pressure
  //    2 - Characteristic extrapolation of pressure (Blazek Eqn 8.32 - 8.36)
  amrex::Real inlet_type = 0;
  // outlet types:
  //    0 - FOExtrap everything
  //    1 - Characteristic Pressure Outlet (recommended)
  //    2 - Fixed Pressure
  amrex::Real outlet_type = 0;
};

struct ProbParmHost
{
  amrex::Vector<amrex::Real> h_pmf_X;
  amrex::Vector<amrex::Real> h_pmf_Y;
  amrex::Gpu::DeviceVector<amrex::Real> pmf_X;
  amrex::Gpu::DeviceVector<amrex::Real> pmf_Y;
  ProbParmHost() : pmf_X(0), pmf_Y(0) {}
};

#endif
