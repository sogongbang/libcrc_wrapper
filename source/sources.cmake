#
# Copyright (c) 2022 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

if(INCLUDE__LIBCRC)

get_filename_component(_tmp_source_dir "${LIBCRC__BASE_DIR}" ABSOLUTE)

include_directories(${_tmp_source_dir}/include)

set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crc8.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crc16.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crc32.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crc64.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crcccitt.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crcdnp.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crckrmit.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/crcsick.c)

include_directories(${_tmp_source_dir}/test)

set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/test/testcrc.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/test/testnmea.c)

include_directories(${CMAKE_CURRENT_LIST_DIR}/libcrc/tab)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${CMAKE_CURRENT_LIST_DIR}/libcrc/src/nmea-chk.c)

endif(INCLUDE__LIBCRC)

