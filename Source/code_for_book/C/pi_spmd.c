/*

NAME:   PI SPMD final version without false sharing

This program will numerically compute the integral of

                  4/(1+x*x) 
				  
from 0 to 1.  The value of this integral is pi -- which 
is great since it gives us an easy way to check the answer.

The program was parallelized using OpenMP and an SPMD 
algorithm.  The following OpenMP specific lines were 
added: 

(1) A line to include omp.h -- the include file that 
contains OpenMP's function prototypes and constants.

(2) A pragma that tells OpenMP to create a team of threads
with an integer variable i being created for each thread.

(3) two function calls: one to get the thread ID (ranging
from 0 to one less than the number of threads), and the other
returning the total number of threads.

(4) A "single" construct so only one thread prints the number
of threads.

(5) A cyclic distribution of the loop by changing loop control
expressions to run from the thread ID incremented by the number 
of threads.  Local sums accumlated into sum[id].

(6) A barrier to make sure everyone's done.

(7) A single construct so only one thread combines the local
sums into a single global sum.

Note that this program avoids the false sharing problem
by storing partial sums into a private scalar.

History: Written by Tim Mattson, 11/99.

*/

#include <stdio.h>
#include <omp.h>

static long num_steps = 1024*1024*1024;
int main ()
{
   int numthreads;
   double pi, step, full_sum = 0.0;
   step = 1.0 / (double) num_steps;

   #pragma omp parallel 
   {
      int id = omp_get_thread_num();
      double x, partial_sum = 0;

      #pragma omp single
         numthreads = omp_get_num_threads();

      for (int i = id; i < num_steps; i += numthreads) {
         x = (i + 0.5) * step;
         partial_sum += 4.0 / (1.0 + x*x);
      }
      #pragma omp critical
         full_sum += partial_sum;
    }
      
   pi = step * full_sum;
   printf("\n pi is %f with %d with threads \n ", pi, numthreads);
}	  
