//----------------------------------------------------------------------------
//      _____
//     *     *
//    *____   *____
//   * *===*   *==*
//  *___*===*___**  AVNET Design Resource Center
//       *======*         www.em.avnet.com/drc
//        *====*
//----------------------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
//
// Please direct any questions or issues to the MicroZed Community Forums:
//     http://www.microzed.org
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2014 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------------------
//
// Create Date:         Feb 03, 2014
// Tool versions:       SDK 2013.3
// File Name:           linux_user_io.c
// Description:         User LED and Push Button application for Linux.
//
//----------------------------------------------------------------------------


#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int set_next_count_pattern(void)
{
	static int count = 0;
	static int direction = 1;
	char gpio_setting[5];
	int io_result = 0;

	FILE  *fp_led0;
	FILE  *fp_led1;
	FILE  *fp_led2;
	FILE  *fp_led3;

	// Open the gpio value properties so that they can be read/written.
	fp_led0 = fopen("/sys/class/gpio/gpio54/value", "r+");
	fp_led1 = fopen("/sys/class/gpio/gpio55/value", "r+");
	fp_led2 = fopen("/sys/class/gpio/gpio56/value", "r+");
	fp_led3 = fopen("/sys/class/gpio/gpio57/value", "r+");

	// Write next pattern to LEDs.
	if (count == 0)
	{
		strcpy(gpio_setting, "1");

		// Now begin counting 'up'.
		direction = 1;
	}
	else
	{
		strcpy(gpio_setting, "0");
	}
	fwrite(&gpio_setting, sizeof(char), 1, fp_led0);
	fflush(fp_led0);

	if (count == 1)
	{
		strcpy(gpio_setting, "1");
	}
	else
	{
		strcpy(gpio_setting, "0");
	}
	fwrite(&gpio_setting, sizeof(char), 1, fp_led1);
	fflush(fp_led1);

	if (count == 2)
	{
		strcpy(gpio_setting, "1");
	}
	else
	{
		strcpy(gpio_setting, "0");
	}
	fwrite(&gpio_setting, sizeof(char), 1, fp_led2);
	fflush(fp_led2);

	if (count == 3)
	{
		strcpy(gpio_setting, "1");

		// Last LED in the set, begin counting 'down'.
		direction = 0;
	}
	else
	{
		strcpy(gpio_setting, "0");
	}
	fwrite(&gpio_setting, sizeof(char), 1, fp_led3);
	fflush(fp_led3);

	if (direction == 1)
	{
		// Increment count for next time around.
		count = count + 1;
	}
	else if (direction == 0)
	{
		// Decrement count for next time around.
		count = count - 1;
	}
	else
	{
		/*
		 *  Something went wrong keeping track of direction, reset the
		 *  direction to 'up'.
		 */
		direction = 1;
		count = 0;
	}

	// Close the GPIO value property files.
	fclose(fp_led0);
	fclose(fp_led1);
	fclose(fp_led2);
	fclose(fp_led3);

	return io_result;
}

int set_next_input_pattern(void)
{
	static int direction = 1;
	char gpio_setting[5];
	int io_result = 0;

	FILE  *fp_led0;
	FILE  *fp_led1;
	FILE  *fp_led2;
	FILE  *fp_led3;
	FILE  *fp_pb0;
	FILE  *fp_pb1;

	// Open the gpio value properties so that they can be read/written.
	fp_led0 = fopen("/sys/class/gpio/gpio54/value", "r+");
	fp_led1 = fopen("/sys/class/gpio/gpio55/value", "r+");
	fp_led2 = fopen("/sys/class/gpio/gpio56/value", "r+");
	fp_led3 = fopen("/sys/class/gpio/gpio57/value", "r+");
	fp_pb0 = fopen("/sys/class/gpio/gpio58/value", "r");
	fp_pb1 = fopen("/sys/class/gpio/gpio59/value", "r");

	// Read the current value of the PB0 GPIO input.
	fscanf(fp_pb0, "%s", gpio_setting);

	// Determine whether the push button is being depressed or not.
	if (!strcmp(gpio_setting, "1"))
	{
		// There was a user input that was detected.
		io_result += 1;
	}

	// Read the current value of the PB1 GPIO input.
	fscanf(fp_pb1, "%s", gpio_setting);

	// Determine whether the push button is being depressed or not.
	if (!strcmp(gpio_setting, "1"))
	{
		// There was a user input that was detected.
		io_result += 1;
	}

	// Check to see if any of the buttons were being pressed.
	if (io_result > 0)
	{
		// Write next pattern to LEDs.
		if (direction == 0)
		{
			strcpy(gpio_setting, "1");

			// Now turn all LEDs ON.
			direction = 1;
		}
		else
		{
			strcpy(gpio_setting, "0");

			// Now turn all LEDs OFF.
			direction = 0;
		}

		fwrite(&gpio_setting, sizeof(char), 1, fp_led0);
		fwrite(&gpio_setting, sizeof(char), 1, fp_led1);
		fwrite(&gpio_setting, sizeof(char), 1, fp_led2);
		fwrite(&gpio_setting, sizeof(char), 1, fp_led3);
		fflush(fp_led0);
		fflush(fp_led1);
		fflush(fp_led2);
		fflush(fp_led3);
	}

	// Close the GPIO value property files.
	fclose(fp_led0);
	fclose(fp_led1);
	fclose(fp_led2);
	fclose(fp_led3);
	fclose(fp_pb0);
	fclose(fp_pb1);

	return io_result;
}

int main()
{
	char gpio_setting[5];
	int io_result = 0;
	FILE  *fp;

	// Display the lab name in the application banner.
	printf("*********************************************************\n");
	printf("*                                                       *\n");
	printf("*   MicroZed FMC Carrier User IO Example                *\n");
	printf("*                                                       *\n");
	printf("*********************************************************\n");

	// Open the export file and write the PSGPIO number for each Pmod GPIO
	// signal to the Linux sysfs GPIO export property, then close the file.
	fp = fopen("/sys/class/gpio/export", "w");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/export node\n");
	}
	else
	{
		// Set the export property for GPIO54.
		strcpy(gpio_setting, "54");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);

		// Set the export property for GPIO55.
		strcpy(gpio_setting, "55");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);
		
		// Set the export property for GPIO56.
		strcpy(gpio_setting, "56");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);
		
		// Set the export property for GPIO57.
		strcpy(gpio_setting, "57");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);
		
		// Set the export property for GPIO58.
		strcpy(gpio_setting, "58");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);

		// Set the export property for GPIO59.
		strcpy(gpio_setting, "59");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);

		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for GPIO54.
	fp = fopen("/sys/class/gpio/gpio54/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio54/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			// Set the direction property to "out".
			strcpy(gpio_setting, "out");
			fwrite(&gpio_setting, sizeof(char), 3, fp);
			fflush(fp);
		}

		fclose(fp);
	}
	
	// Check the direction property of the PSGPIO number for GPIO55.
	fp = fopen("/sys/class/gpio/gpio55/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio55/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			// Set the direction property to "out".
			strcpy(gpio_setting, "out");
			fwrite(&gpio_setting, sizeof(char), 3, fp);
			fflush(fp);
		}

		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for GPIO56.
	fp = fopen("/sys/class/gpio/gpio56/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio56/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			// Set the direction property to "out".
			strcpy(gpio_setting, "out");
			fwrite(&gpio_setting, sizeof(char), 3, fp);
			fflush(fp);
		}

		fclose(fp);
	}
	
	// Check the direction property of the PSGPIO number for GPIO57.
	fp = fopen("/sys/class/gpio/gpio57/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio57/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			// Set the direction property to "out".
			strcpy(gpio_setting, "out");
			fwrite(&gpio_setting, sizeof(char), 3, fp);
			fflush(fp);
		}

		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for GPIO58.
	fp = fopen("/sys/class/gpio/gpio58/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio58/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "out"))
		{
			// Set the direction property to "in".
			strcpy(gpio_setting, "in");
			fwrite(&gpio_setting, sizeof(char), 2, fp);
			fflush(fp);
		}

		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for GPIO59.
	fp = fopen("/sys/class/gpio/gpio59/direction", "r+");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio59/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the GPIO is set as input or output.
		if (!strcmp(gpio_setting, "out"))
		{
			// Set the direction property to "in".
			strcpy(gpio_setting, "in");
			fwrite(&gpio_setting, sizeof(char), 2, fp);
			fflush(fp);
		}

		fclose(fp);
	}

	// Perform LED pattern generation.

	while (io_result != -1)
	{
		// Check to see if a user is pressing one of the buttons.
		io_result = set_next_input_pattern();

		if (io_result == 0)
		{
			/* User is not pressing one of the buttons, set the next
			 * counting pattern.
			 */
			io_result = set_next_count_pattern();
		}

		// Check to see which buttons were pushed and delay accordingly.
		if (io_result == 1)
		{
			// Only one button was pressed.
			usleep(200000);
		}
		else if (io_result == 2)
		{
			// Only one button was pressed.
			usleep(800000);
		}
		else
		{
			// No buttons were pressed.
			usleep(50000);
		}
	}

	printf("User IO Application Exiting...");
	
	exit(io_result);
}
