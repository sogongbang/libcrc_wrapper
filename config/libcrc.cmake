#
# Copyright (c) 2022 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

set(INCLUDE__LIBCRC TRUE)
set(PROJECT_UBINOS_LIBRARIES ${PROJECT_UBINOS_LIBRARIES} libcrc_wrapper)

set_cache_default(LIBCRC__BASE_DIR "${PROJECT_LIBRARY_DIR}/libcrc" STRING "libcrc project base dir")

