/*
 * Copyright (c) 2021 Sung Ho Park and CSOS
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <ubinos/bsp.h>
#include <ubinos/ubiclib.h>

#include <stdio.h>
#include <stdlib.h>
#include "testall.h"

int appmain(int argc, char * argv[])
{
	int problems;

    printf("\n\n\n");
    printf("================================================================================\n");
    printf("libcrc_tester (build time: %s %s)\n", __TIME__, __DATE__);
    printf("================================================================================\n");
    printf("\n");
    printf("\n");

	problems  = 0;
	problems += test_crc( true );
	problems += test_checksum_NMEA( true );

	printf( "\n" );

	if ( problems == 0 ) printf( "**** All tests succeeded\n\n" );
	else                 printf( "**** A TOTAL OF %d TESTS FAILED, PLEASE CORRECT THE DETECTED PROBLEMS ****\n\n", problems );

	return problems;
}

