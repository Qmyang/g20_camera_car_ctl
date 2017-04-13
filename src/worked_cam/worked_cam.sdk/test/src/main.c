
/*
 * main.c
 *
 *  Created on: Feb 27, 2017
 *      Author: Qmyang
 */

#include "xparameters.h"

#include <stdio.h>
//#include "platform.h"

#include <stdlib.h>


// Read/Write 16384 words or 64kB
#define TEST_SIZE 16384
#define red(pixel) ((pixel & 0xff0000) >> 16)
#define green(pixel) ((pixel & 0xff00) >> 8)
#define blue(pixel) (pixel & 0xff)



#define ONE_SEC 100000000
#define FORWARD 0b1011
#define LEFT 0b1010
#define RIGHT 0b1001
#define BACKWARD 0b0111



#define OUTPUT 1
// Pointer to the external memory
volatile unsigned int * memptr = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
// Thomas Wang's 32-bit mix hash

#define DISPLAY_COLUMNS  640
#define DISPLAY_ROWS     480

volatile unsigned int *gpio_sw = 0x40000000;

// VDMA (VGA)
volatile unsigned int * VDMA_VGA    = (unsigned int *)XPAR_AXI_VDMA_1_BASEADDR;
volatile unsigned int * VDMA_VGA_CR = (unsigned int *)XPAR_AXI_VDMA_1_BASEADDR;
volatile unsigned int * VDMA_VGA_AD = (unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + 0x5C);
volatile unsigned int * VDMA_VGA_ST = (unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + 0x58);
volatile unsigned int * VDMA_VGA_HS = (unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + 0x54);
volatile unsigned int * VDMA_VGA_VS = (unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + 0x50);
//
// VDMA (FB_IN)
volatile unsigned int * VDMA_FB_IN    = (unsigned int *)XPAR_AXI_VDMA_0_BASEADDR;
volatile unsigned int * VDMA_FB_IN_CR = (unsigned int *)XPAR_AXI_VDMA_0_BASEADDR;
volatile unsigned int * VDMA_FB_IN_AD = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0x5C);
volatile unsigned int * VDMA_FB_IN_ST = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0x58);
volatile unsigned int * VDMA_FB_IN_HS = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0x54);
volatile unsigned int * VDMA_FB_IN_VS = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0x50);


// VDMA (FB_OUT)
volatile unsigned int * VDMA_FB_OUT    = (unsigned int *)XPAR_AXI_VDMA_0_BASEADDR;
volatile unsigned int * VDMA_FB_OUT_CR = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0x30);
volatile unsigned int * VDMA_FB_OUT_AD = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0xAC);
volatile unsigned int * VDMA_FB_OUT_ST = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0xA8);
volatile unsigned int * VDMA_FB_OUT_HS = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0xA4);
volatile unsigned int * VDMA_FB_OUT_VS = (unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + 0xA0);

int main()
{
	unsigned int i, j, ii, jj;
	unsigned int (*fb_in)[640] = memptr;
	int x_g = 32;
	int y_g = 0;
	int x_h = 64;
	int y_h = 48;
	int x_t = 32;
	int y_t = 24;
	int state;
#if OUTPUT
	unsigned int (*fb_out)[640] = 0x81000000;
#else
	unsigned int (*fb_out)[64] = 0x81000000;
#endif
	int switch_value = 0;
	int r,g,b;
	int marker_size = 0;

	for (i = 0; i < 480; i++) {
		for (j = 0; j < 640; j++){
			fb_in[i][j] = 0;
		}
	}




//	*(VDMA_FB_IN_CR) = 0x1;			// Enable VDMA
//	*(VDMA_FB_IN_AD) = (unsigned int)fb_in;		// The base address of the frame buffer
//	*(VDMA_FB_IN_ST) = 2560;			// Line size (stride value)
//	*(VDMA_FB_IN_HS) = 4*DISPLAY_COLUMNS;	// Horizontal Pixel Count * 4B/pixel
//	*(VDMA_FB_IN_VS) = DISPLAY_ROWS;		// Vertical Line Count



	*(VDMA_FB_OUT_CR) = 0x1;			// Enable VDMA
	*(VDMA_FB_OUT_AD) = (unsigned int)fb_in;		// The base address of the frame buffer
	*(VDMA_FB_OUT_ST) = 2560;			// Line size (stride value)
	*(VDMA_FB_OUT_HS) = 4*640;	// Horizontal Pixel Count * 4B/pixel
	*(VDMA_FB_OUT_VS) = 480;		// Vertical Line Count

	*(VDMA_VGA_CR) = 0x1;			// Enable VDMA
	*(VDMA_VGA_AD) = (unsigned int)fb_in;		// The base address of the frame buffer
	*(VDMA_VGA_ST) = 2560;			// Line size (stride value)
	*(VDMA_VGA_HS) = 4*DISPLAY_COLUMNS;	// Horizontal Pixel Count * 4B/pixel
	*(VDMA_VGA_VS) = DISPLAY_ROWS;		// Vertical Line Count

	switch_value = *gpio_sw & 1;
	while (1) {
		i = i + 1;
		if ((*gpio_sw & 0x1) == switch_value)
			continue;

		switch_value = *gpio_sw & 1;
		*(VDMA_VGA_CR) = 0x0;

		*(VDMA_VGA_CR) = 0x1;
		if(*gpio_sw & 0x1)
			*(VDMA_VGA_AD) = (unsigned int)fb_out;
		else
			*(VDMA_VGA_AD) = (unsigned int)fb_in;
		*(VDMA_VGA_ST) = 2560;			// Line size (stride value)
		*(VDMA_VGA_HS) = 4*DISPLAY_COLUMNS;	// Horizontal Pixel Count * 4B/pixel
		*(VDMA_VGA_VS) = DISPLAY_ROWS;		// Vertical Line Count

	}

}


