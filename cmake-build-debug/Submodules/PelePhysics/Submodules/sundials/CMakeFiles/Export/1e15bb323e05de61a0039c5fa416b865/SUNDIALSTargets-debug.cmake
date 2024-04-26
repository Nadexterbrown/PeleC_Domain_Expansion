#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SUNDIALS::generic_static" for configuration "Debug"
set_property(TARGET SUNDIALS::generic_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::generic_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_generic.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::generic_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::generic_static "${_IMPORT_PREFIX}/lib/libsundials_generic.a" )

# Import target "SUNDIALS::generic_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::generic_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::generic_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_generic.6.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_generic.6.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::generic_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::generic_shared "${_IMPORT_PREFIX}/lib/libsundials_generic.6.6.2.dylib" )

# Import target "SUNDIALS::nvecserial_static" for configuration "Debug"
set_property(TARGET SUNDIALS::nvecserial_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::nvecserial_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_nvecserial.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::nvecserial_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::nvecserial_static "${_IMPORT_PREFIX}/lib/libsundials_nvecserial.a" )

# Import target "SUNDIALS::nvecserial_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::nvecserial_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::nvecserial_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_nvecserial.6.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_nvecserial.6.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::nvecserial_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::nvecserial_shared "${_IMPORT_PREFIX}/lib/libsundials_nvecserial.6.6.2.dylib" )

# Import target "SUNDIALS::nvecmanyvector_static" for configuration "Debug"
set_property(TARGET SUNDIALS::nvecmanyvector_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::nvecmanyvector_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_nvecmanyvector.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::nvecmanyvector_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::nvecmanyvector_static "${_IMPORT_PREFIX}/lib/libsundials_nvecmanyvector.a" )

# Import target "SUNDIALS::nvecmanyvector_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::nvecmanyvector_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::nvecmanyvector_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_nvecmanyvector.6.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_nvecmanyvector.6.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::nvecmanyvector_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::nvecmanyvector_shared "${_IMPORT_PREFIX}/lib/libsundials_nvecmanyvector.6.6.2.dylib" )

# Import target "SUNDIALS::sunmatrixband_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixband_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixband_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixband.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixband_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixband_static "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixband.a" )

# Import target "SUNDIALS::sunmatrixband_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixband_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixband_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixband.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunmatrixband.4.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixband_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixband_shared "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixband.4.6.2.dylib" )

# Import target "SUNDIALS::sunmatrixdense_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixdense_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixdense_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixdense.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixdense_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixdense_static "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixdense.a" )

# Import target "SUNDIALS::sunmatrixdense_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixdense_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixdense_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixdense.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunmatrixdense.4.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixdense_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixdense_shared "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixdense.4.6.2.dylib" )

# Import target "SUNDIALS::sunmatrixsparse_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixsparse_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixsparse_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixsparse.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixsparse_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixsparse_static "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixsparse.a" )

# Import target "SUNDIALS::sunmatrixsparse_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunmatrixsparse_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunmatrixsparse_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixsparse.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunmatrixsparse.4.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunmatrixsparse_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunmatrixsparse_shared "${_IMPORT_PREFIX}/lib/libsundials_sunmatrixsparse.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolband_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolband_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolband_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolband.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolband_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolband_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolband.a" )

# Import target "SUNDIALS::sunlinsolband_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolband_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolband_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolband.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolband.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolband_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolband_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolband.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsoldense_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsoldense_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsoldense_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsoldense.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsoldense_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsoldense_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsoldense.a" )

# Import target "SUNDIALS::sunlinsoldense_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsoldense_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsoldense_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsoldense.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsoldense.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsoldense_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsoldense_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsoldense.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolpcg_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolpcg_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolpcg_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolpcg.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolpcg_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolpcg_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolpcg.a" )

# Import target "SUNDIALS::sunlinsolpcg_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolpcg_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolpcg_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolpcg.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolpcg.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolpcg_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolpcg_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolpcg.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolspbcgs_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspbcgs_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspbcgs_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspbcgs.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspbcgs_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspbcgs_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspbcgs.a" )

# Import target "SUNDIALS::sunlinsolspbcgs_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspbcgs_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspbcgs_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspbcgs.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolspbcgs.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspbcgs_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspbcgs_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspbcgs.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolspfgmr_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspfgmr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspfgmr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspfgmr.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspfgmr_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspfgmr_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspfgmr.a" )

# Import target "SUNDIALS::sunlinsolspfgmr_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspfgmr_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspfgmr_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspfgmr.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolspfgmr.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspfgmr_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspfgmr_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspfgmr.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolspgmr_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspgmr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspgmr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspgmr.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspgmr_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspgmr_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspgmr.a" )

# Import target "SUNDIALS::sunlinsolspgmr_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolspgmr_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolspgmr_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspgmr.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolspgmr.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolspgmr_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolspgmr_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolspgmr.4.6.2.dylib" )

# Import target "SUNDIALS::sunlinsolsptfqmr_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolsptfqmr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolsptfqmr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolsptfqmr.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolsptfqmr_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolsptfqmr_static "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolsptfqmr.a" )

# Import target "SUNDIALS::sunlinsolsptfqmr_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunlinsolsptfqmr_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunlinsolsptfqmr_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolsptfqmr.4.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunlinsolsptfqmr.4.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunlinsolsptfqmr_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunlinsolsptfqmr_shared "${_IMPORT_PREFIX}/lib/libsundials_sunlinsolsptfqmr.4.6.2.dylib" )

# Import target "SUNDIALS::sunnonlinsolnewton_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunnonlinsolnewton_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunnonlinsolnewton_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolnewton.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunnonlinsolnewton_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunnonlinsolnewton_static "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolnewton.a" )

# Import target "SUNDIALS::sunnonlinsolnewton_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunnonlinsolnewton_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunnonlinsolnewton_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolnewton.3.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunnonlinsolnewton.3.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunnonlinsolnewton_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunnonlinsolnewton_shared "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolnewton.3.6.2.dylib" )

# Import target "SUNDIALS::sunnonlinsolfixedpoint_static" for configuration "Debug"
set_property(TARGET SUNDIALS::sunnonlinsolfixedpoint_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunnonlinsolfixedpoint_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolfixedpoint.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunnonlinsolfixedpoint_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunnonlinsolfixedpoint_static "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolfixedpoint.a" )

# Import target "SUNDIALS::sunnonlinsolfixedpoint_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::sunnonlinsolfixedpoint_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::sunnonlinsolfixedpoint_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolfixedpoint.3.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_sunnonlinsolfixedpoint.3.6.2.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::sunnonlinsolfixedpoint_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::sunnonlinsolfixedpoint_shared "${_IMPORT_PREFIX}/lib/libsundials_sunnonlinsolfixedpoint.3.6.2.dylib" )

# Import target "SUNDIALS::arkode_static" for configuration "Debug"
set_property(TARGET SUNDIALS::arkode_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::arkode_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_arkode.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::arkode_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::arkode_static "${_IMPORT_PREFIX}/lib/libsundials_arkode.a" )

# Import target "SUNDIALS::arkode_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::arkode_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::arkode_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_arkode.5.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_arkode.5.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::arkode_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::arkode_shared "${_IMPORT_PREFIX}/lib/libsundials_arkode.5.6.2.dylib" )

# Import target "SUNDIALS::cvode_static" for configuration "Debug"
set_property(TARGET SUNDIALS::cvode_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::cvode_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_cvode.a"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::cvode_static )
list(APPEND _cmake_import_check_files_for_SUNDIALS::cvode_static "${_IMPORT_PREFIX}/lib/libsundials_cvode.a" )

# Import target "SUNDIALS::cvode_shared" for configuration "Debug"
set_property(TARGET SUNDIALS::cvode_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SUNDIALS::cvode_shared PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libsundials_cvode.6.6.2.dylib"
  IMPORTED_SONAME_DEBUG "/usr/local/lib/libsundials_cvode.6.dylib"
  )

list(APPEND _cmake_import_check_targets SUNDIALS::cvode_shared )
list(APPEND _cmake_import_check_files_for_SUNDIALS::cvode_shared "${_IMPORT_PREFIX}/lib/libsundials_cvode.6.6.2.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
