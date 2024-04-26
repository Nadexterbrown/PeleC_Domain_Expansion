namespace amrex {

const char* buildInfoGetBuildDate() {

  static const char BUILD_DATE[] = __DATE__ " "  __TIME__;
  return BUILD_DATE;
}

const char* buildInfoGetBuildDir() {

  static const char BUILD_DIR[] = "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/cmake-build-debug/Exec/RegTests/PMF-SRK";
  return BUILD_DIR;
}

const char* buildInfoGetBuildMachine() {

  static const char BUILD_MACHINE[] = "macOS Nolans-Air-4.lan 14.0 23A344 arm64";
  return BUILD_MACHINE;
}

const char* buildInfoGetAMReXDir() {

  static const char AMREX_DIR[] = "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Submodules/amrex";
  return AMREX_DIR;
}

const char* buildInfoGetComp() {

  static const char COMP[] = "AppleClang";
  return COMP;
}

const char* buildInfoGetCompVersion() {

  static const char COMP_VERSION[] = "15.0.0.15000040";
  return COMP_VERSION;
}

// deprecated
const char* buildInfoGetFcomp() {

  static const char FCOMP[] = "";
  return FCOMP;
}

// deprecated
const char* buildInfoGetFcompVersion() {

  static const char FCOMP_VERSION[] = "";
  return FCOMP_VERSION;
}

const char* buildInfoGetCXXName() {

  static const char CXX_comp_name[] = "/Library/Developer/CommandLineTools/usr/bin/c++";
  return CXX_comp_name;
}

const char* buildInfoGetFName() {

  static const char F_comp_name[] = "";
  return F_comp_name;
}

const char* buildInfoGetCXXFlags() {

  static const char CXX_flags[] = "-DUSE_SIMPLE_TRANSPORT -DUSE_SRK_EOS -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Utility/TurbInflow -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Utility/Diagnostics -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Utility/PltFileManager -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Utility/Filter -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Submodules/amrex/Src/Extern/SUNDIALS -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Transport -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Eos -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Mechanisms/LiDryer -I/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Source/Reactions -g  -Wall -Wextra -pedantic -Wno-unused-function -faligned-new -Wunreachable-code -Wnull-dereference -Wfloat-conversion -Wshadow -Woverloaded-virtual -Wno-pass-failed -Wno-c++17-extensions";
  return CXX_flags;
}

const char* buildInfoGetFFlags() {

  static const char F_flags[] = "";
  return F_flags;
}

const char* buildInfoGetLinkFlags() {

  static const char link_flags[] = "";
  return link_flags;
}

const char* buildInfoGetLibraries() {

  static const char libraries[] = "";
  return libraries;
}

const char* buildInfoGetAux(int i) {

  //static const char AUX1[] = "${AUX[1]}";
  
  static const char EMPT[] = "";

  switch(i)
  {
    
    default: return EMPT;
  }
}

int buildInfoGetNumModules() {
  // int const num_modules = X;
  int const num_modules = 0;
  return num_modules;
}

const char* buildInfoGetModuleName(int i) {

  //static const char MNAME1[] = "${MNAME[1]}";
  
  static const char EMPT[] = "";

  switch(i)
  {
    
    default: return EMPT;
  }
}

const char* buildInfoGetModuleVal(int i) {

  //static const char MVAL1[] = "${MVAL[1]}";
  
  static const char EMPT[] = "";

  switch(i)
  {
    
    default: return EMPT;
  }
}

const char* buildInfoGetGitHash(int i) {

  //static const char HASH1[] = "${GIT[1]}";
  static const char HASH1[] = "226e600e1c8e";
  static const char HASH2[] = "24.02-31-g97512176d8e5";
  static const char EMPT[] = "";

  switch(i)
  {
    case 1: return HASH1;
    case 2: return HASH2;
    default: return EMPT;
  }
}

const char* buildInfoGetBuildGitHash() {

  //static const char HASH[] = "${GIT}";
  static const char HASH[] = "";

  return HASH;
}

const char* buildInfoGetBuildGitName() {

  //static const char NAME[] = "";
  static const char NAME[] = "";

  return NAME;
}

}
