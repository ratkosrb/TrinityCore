# Copyright (C) 2005-2009 MaNGOS project <http://getmangos.com/>
# Copyright (C) 2008-2019 TrinityCore <https://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

CollectSourceFiles(
    ${CMAKE_CURRENT_SOURCE_DIR}
    PRIVATE_SOURCES)

if (WIN32)
  list(APPEND PRIVATE_SOURCES ${sources_windows})
endif()

add_executable(db2check ${PRIVATE_SOURCES} )

target_include_directories(db2check
    PUBLIC
    ${CMAKE_SOURCE_DIR})

target_link_libraries(db2check
    PRIVATE
      trinity-core-interface
      game-interface
    PUBLIC
      extractor_common)

CollectIncludeDirectories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    PUBLIC_INCLUDES)

target_include_directories(db2check
  PUBLIC
    ${PUBLIC_INCLUDES}
  PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR})

set_target_properties(db2check
  PROPERTIES
    FOLDER
      "tools")

if( UNIX )
  install(TARGETS db2check DESTINATION bin)
elseif( WIN32 )
  install(TARGETS db2check DESTINATION "${CMAKE_INSTALL_PREFIX}")
endif()