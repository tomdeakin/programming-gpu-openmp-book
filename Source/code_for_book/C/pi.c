/*

This program will numerically compute the integral of

                  4/(1+x*x) 
				  
from 0 to 1.  The value of this integral is pi -- which 
is great since it gives us an easy way to check the answer.

The is the original sequential program.  It uses the timer
from the OpenMP runtime library

History: Written by Tim Mattson, Nov 1999
         Start i from 0 instead of 1 and minor edits by Helen He, Nov 2020

*/

#include <stdio.h>
#include <omp.h>
static long num_steps = 1024*1024*1024;

int main()
{
   double x, pi, step, sum = 0.0;
   step = 1.0 / (double) num_steps;

   for (int i = 0; i < num_steps; i++) {
      x = (i + 0.5) * step;
      sum += 4.0 / (1.0 + x * x);
   }

   pi = step * sum;
   printf("pi = %lf, with %ld steps\n ", pi, num_steps);
}
