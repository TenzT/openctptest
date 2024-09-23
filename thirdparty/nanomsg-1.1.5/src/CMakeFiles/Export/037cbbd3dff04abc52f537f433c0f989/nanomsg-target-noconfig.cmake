#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nanomsg" for configuration ""
set_property(TARGET nanomsg APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(nanomsg PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libnanomsg.5.1.0.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libnanomsg.5.dylib"
  )

list(APPEND _cmake_import_check_targets nanomsg )
list(APPEND _cmake_import_check_files_for_nanomsg "${_IMPORT_PREFIX}/lib/libnanomsg.5.1.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
