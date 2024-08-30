# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\ImageViewer_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\ImageViewer_autogen.dir\\ParseCache.txt"
  "ImageViewer_autogen"
  )
endif()
