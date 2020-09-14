
---
title: Programming your GPU with OpenMP
author: Tom Deakin, Tim Mattson and Eric Stotzer
---

OpenMP is a widely used language for programming the nodes in a parallel computer. Those nodes are now heterogeneous, including a GPU alongside the traditional CPU. We are writing a book to introduce OpenMP to programmers wanting to write parallel programs on their GPU. We want to publish our book with the MIT Press.


# Our book
With the addition of controls to program accelerators such as GPUs, the OpenMP specification has grown in scope and complexity. The OpenMP model of memory and concurrency has been expanded to take into account the massive levels of parallelism available on GPUs.

We are writing a book that takes the reader through the steps necessary to write portable and performant parallel programs targeting GPU architectures with OpenMP. We focus only on those items from OpenMP that are required for programming GPUs.


# Outstanding Features
Our book embraces an approach we call *active learning*. The text explains the concepts in distinct, modestly sizes components follows by clear examples the students can code to reinforce the material. Real learning comes from trying out the examples. We have developed this approach for teaching various aspects of OpenMP over the last 15 years in tutorials offered at various supercomputing conferences and other venues. We have also used this approach for teaching OpenCL at similar events, focussing primarily on the fundamentals of programming GPUs. This experience has shown us which examples are best suited for mastering the elements of OpenMP for GPUs.

A noteworthy feature of this project is the variety of supplementary materials to support the book. We will provide an online repository containing source codes for the example programs from the book.These examples will be in provided in all languages currently supported by OpenMP: C, C++ and Fortran. In addition, we will create a Fortran Supplement to enable programmers using that language to follow along and translate the examples in the book. We also have a complete set of PowerPoint slides covering the content of the book. This will support instructors who use our book as a text book. 

Many of these supplementary materials already exist and can be used to market the book.

# The Authors
The Authors are experienced OpenMP programmers actively involved in the ongoing evolution of the OpenMP programming language. One of us has been involved from the very beginning; way back in 1996 when a small team came together to define OpenMP. We are all members of the OpenMP Architectural Review Board (ARB).

We have extensive experience both using and teaching OpenMP starting back in 1998 with the very first OpenMP tutorial offered at SC98. We have developed performance portable parallel programs in OpenMP targeting the latest CPU and GPU architectures. There is no better team to provide an introductory text on programming GPUs with OpenMP.

For further details about us, we provide brief CVs appended to the end of this prospectus.

# Related Titles
Our book is complimentary to the recently published books "Using OpenMP - the Next Step" and "OpenMP Common Core: Making OpenMP Simple Again". Our goal is to provide a book for programmers who want to program their GPU, and the student can then backfill their knowledge of OpenMP using the "OpenMP Common Core" book and then explore other features of OpenMP with the "Next Step" book.

To our knowledge, there is currently no book aimed at programming GPUs with OpenMP. GPUs are the prevailing architecture used in parallel computing. Using GPUs to accelerate applications occurs at all scales, from consumer mobile devices and workstations through to high-end data center and high-performance computing (HPC) supercomputers. There is a dire need for a book teaching how to program GPUs using OpenMP.


# Audience
Our book is primarily aimed at developers familiar with parallel programming who wish to program their GPUs. Given the prevalence of generally programmable GPUs, the need for OpenMP programmers is growing and strong. We plan to include sufficient background and context for those readers unfamiliar with OpenMP so that the book may be read in isolation without prerequisites; however we will recommend the MIT Press "OpenMP Common Core: Making OpenMP Simple Again" book for a broader introduction to OpenMP. A key audience are those developers with a new and pressing need to program GPUs for the first time.

OpenMP, however, is largely restricted to the high-performance computing (HPC) community. This does restrict the population of potential readers. We are confident, however, that over time communities outside HPC with interest in performance-computing will migrate to OpenMP; thereby growing the market considerably.  

# Status of the Book
The book will be modeled closely after the popular "Programming your GPU with OpenMP" tutorials we have been teaching over the last several years. All of the supplementary materials mentioned earlier have been produced and, in some form, released to the public. Hence, the flow for the book’s contents, exercises, and figures have been developed and tested on our target audience. 

We have produced a detailed outline for the book and provide it with this prospectus. We are actively writing the book now, though none of the chapters exist at this time. Given the maturity of the outline and our supporting materials, we believe the writing will progress rapidly. Our hope is to have the book written by the end of 2021; an aggressive schedule but doable given the firm foundation we are starting from in this project.

# Reviewers
The authors of "Using OpenMP - the Next Step" would be excellent reviewers for our book. In particular, we recommend Ruud van der Pas and Christian Terboven.
Likewise, we would recommend authors of "OpenMP Common Core: Making OpenMP Simple Again", in particular Alice Koniges and Yun (Helen) He.

Simon McIntosh-Smith, a member of the OpenMP Architecture Review Board and collaborator on our OpenMP tutorials would be a good reviewer. He knows about and fully supports our project.

\clearpage
# CV Tom Deakin

## Experience
University of Bristol, 1/2019 - present

- Lecturer in Computer Architecture, 9/2020-1/2021 (fixed term)
- Senior Research Associate, 3/2020-present
- Research Associate, 1/2018 - 3/2020

Post-doctoral research focussed on performance portability and characterising performance of key particle transport algorithms on a wide range of many-core architectures.

## Education
Ph.D. Computer Science, University of Bristol, 2018

MSci. Computer Science and Mathematics, University of Bristol, 2012

PGDip. Trumpet Performance, Trinity Laban Conservatoire of Music and Dance, 2014 

## Selected Papers

Performance Portability across Diverse Computer Architectures, T. Deakin, S. McIntosh-Smith, J. Price, A. Poenaru, P. Atkinson, C. Popa, J. Salmon. P3HPC international Workshop on Performance, Portability and Productivity in HPC, Supercomputing 2019.

Evaluating the Performance of HPC-style SYCL Applications, T. Deakin, S. McIntosh-Smith. IWOCL and SYCLCon, International Workshop on OpenCL, 2020.

Developing a Mini-app for Exploring Algorithms for Unstructured Mesh Deterministic Discrete Ordinates Transport on Many-core Architectures, T. Deakin, S. McIntosh-Smith, J. Lovegrove, R. Smedley-Stevenson, A. Hagues. MC2019 Mathematics and Computation, American Nuclear Society, 2019.

Benchmarking the First Generation of Production Quality Arm-based Supercomputers. S. McIntosh-Smith, J. Price, A. Poenaru, T. Deakin. In Concurrency and Computation: Practice and Experience, 2019.

Evaluating Attainable Memory Bandwidth of Parallel Programming Models via BabelStream, T. Deakin, J. Price, M. Martineau, S. McIntosh-Smith. In International Journal of Computational Science and Engineering, special issue, 2018.

An Improved Parallelism Scheme for Deterministic Discrete Ordinates Transport, T. Deakin, S. McIntosh-Smith, M. Martineau, W. Gaudin. In International Journal of High Performance Computing Applications special issue (IJHPCA), 2018.

On the Mitigation of Cache Hostile Memory Access Patterns on Many-core CPU Architectures, T. Deakin, W. Gaudin, S. McIntosh-Smith. IXPUG Workshop at ISC, 2017.
Many-core Acceleration of a Discrete Ordinates Transport Mini-app at Extreme Scale, T. Deakin, S. McIntosh-Smith, W. Gaudin. International Supercomputing (ISC), 2016.

## Tutorial Experience
OpenMP for Computational Scientists tutorial, developed and delivered for training at Government Defence Contractor in 2018.

Programming you GPU with OpenMP tutorial at SC’16-19 (assitant) and co-lead SC'20.

Lecturer on COMS10015: Computer Architecture, University of Bristol, 2020.

Lecturer on COMS30005: An Introduction to High Performance Computing, University of Bristol, 2019.

Assistant for Hands on tutorials at SC’14 & SC’15 and IWOCL’18, IWOCL’16 & IWOCL’15 for OpenCL.

Author of Hands on OpenCL tutorial, which has been downloaded over 17,000 times.

OpenMP GPU programming tutorial at the UK OpenMP user group meeting. 18 & 19.

OpenCL multi-day tutorial for multi-national corporation, 2018.


\clearpage
# CV Tim Mattson

## Experience
Intel, 7/1993 - present

  - Programming models, graph algorithms, and scalable data management, 1/05 – present
  - Research Scientist & Industry segment manager, Life Sciences, 3/96 - 1/05
  - Research Scientist & ASCI TFLOP Applications Manager, 7/93-3/96


Khronos OpenCL working group, 6/08-11/2014


OpenMP Architecture Review Board, 5/97 – 6/2008   

  - Chief Executive Officer of the corporation, 12/01-12/03, 


Scientific Computing Associates,

  - Director of Product Engineering, 4/91 - 6/93
  
Yale University,

  - Associate Research Scientist, 4/91 - 6/93
    
Strand Software Technologies, Inc.

  - Senior Software Engineer, 3/90 - 3/91

Quantitative Technology Corp.

  - Senior Software Engineer, 11/87 - 2/90


Mark Resources Inc.

  - Senior Scientist, 6/86 - 10/87


California Institute of Technology,

  - Post Doctoral research associate, 6/85 - 6/86


## Education
Ph.D. Chemistry, University of California, Santa Cruz, 1985

M.S.  Chemistry, University of California, Santa Cruz, 1983

B.S.  Chemistry, University of California, Riverside, 1979

## Selected Papers and Books  

"OpenMP Common Core: Making OpenMP Simple Again", Tim Mattson, Alice Koniges, and Yun (Helen) He. MIT Press, 2019.


"The Ongoing Evolution of OpenMP", Bronis R. de Supinski, Thomas R. W. Scogland, Alejandro Duran, Michael Klemm, Sergi Mateo Bellido, Stephen L. Olivier, Christian Terboven, Timothy G. Mattson.  Proceedings of the IEEE, Vol. 106, Issue: 11, pp. 2004-2019, 2018

"The Three Pillars of Machine Programming", Justin Gottschlich, Armando Solar-Lezama, Nesime Tatbul,  Michael Carbin, Martin Rinard, Regina Barzilay,  Saman Amarasinghe, Joshua B Tenenbaum, Tim Mattson.  the Second ACM SIGPLAN Workshop on Machine Learning and Programming Languages (MAPL), co-located with PLDI, 2018. 

Design of the GraphBLAS API for C,  A. Buluc, T. Mattson, S. McMillan, J. Moreira, and C. Yang.  Graph Algorithms Building Blocks workshop at IPDPS, 2017

The TileDB Array Data Storage Manager, S. Papadopoulos, K. Datta, S. Madden, T.  Mattson.  VLDB Volume 10, No. 4, December 2016

Associative Array Model of SQL, NoSQL, and NewSQL Databases.
IEEE High Performance Extreme Computing, 2016
J. Kepner, V. Gadepally, D. Hutchison, H. Jensen, T. Mattson, S. Samsi, A. Reuther

Comparing runtime systems with exascale ambitions using the Parallel Research Kernels, Proceedings of the International Supercomputing Conference, 2016
R. Van der Wijngaart, A. Kaya, J. Hammond, G. Jost, T. St. John, S. Sridharan, T. Mattson, J. Abercrombie, and J. Nelson

The Big Dawg Polystore System, 
ACM Sigmod Record, 44(3), 2015.  J. Duggan, A. J. Elmore, M. Stonebraker, M. Balazinska, B. Howe, J. Kepner, S. Madden, D. Maier, T. Mattson, S. Zdoânik. 

OpenCL Programming Guide 
Addison Wesley, July 2011.   A. Munshi, B. Gaster, T. Mattson, J. Fung, D. Ginsburg.

Introduction to concurrency in programming languages
CRC Press, 2009   Matthew J. Sottile, Timothy G. Mattson, and Craig E Rasmussen

Patterns for Parallel Programming
Addison-Wesley, September 2004. T. Mattson, B. Sanders and B. Massingill

Parallel Computing in Computational chemistry, ACS Symposium Series number 592, American Chemical Society, edited by T.G. Mattson, 1995

## Previous teaching experience  
OpenMP tutorials at SC from 1998 to 2018 (only skipping 2004).

OpenCL tutorials SC’09, SC’10, SC’11, SC’13, SC’14, HiPEAC’11, ESC’12-15

Parallel Computing tutorials at IDF'98, IDF'99, IDF'01, ESC’10-17

UC Berkeley:  Architecting parallel applications (CS194) 2010, 2011, 2012., 2013, 2014




\clearpage
# CV Eric Stotzer
## Experience
Mythic Inc, 2019-present.

Texas Instruments, 1989-2019.

- Distinguished Member Technical Staff
- Developing compilers and related tools for microcontrollers and digital signal processors
- Working with silicon design teams to define new processor architectures.
- Named on 12 US Patents in the areas of processor architecture and compiler technologies. 
- TI representative on the OpenMP ARB, language committee and co-chair of the accelerator sub-committee.

Adjunct Associate Professor of Computer Science, University of Houston, 2011-present

Teaching:

- Spring 2015: 6327 Shared Memory Programming
- Spring 2012-14: 6327 Shared Memory Programming, with Dr. Barbara Chapman
- Spring 2011: 4331 Real-time Systems and Embedded Programming.
- Fall 2010: 6397 Programming Heterogeneous Systems, with Dr. Barbara Chapman.

## Education
Ph.D. Computer Science, University of Houston, 2010

M.S. Computer Science, University of Houston, 1995

B.S. Computer Science, University of North Texas, 1988

## Selected Papers and Books  
Using OpenMP - The Next Step: Affinity, Accelerators, Tasking, and SIMD. MIT Press 2017. R. van der Pas, E. Stotzer, C. Terboven.

Mitra, G., Stotzer, E., Jayaraj, A., Rendell, A. P., 2014. Implementation and Optimization of the OpenMP Accelerator Model for the TI Keystone II Architecture. Published in Proceedings of the 10th international Conference on OpenMP in Era of Low Power Devices and Accelerators (Salvador, Bahia, Brazil, September 28-30, 2014). 

Netzer, G., Johnsson, L., Ahlin, D., Stotzer, E., Varis, P., Laure, E. 2014. Exploiting DMA for performance and energy optimized STREAM on a DSP.  Published in Proceedings of the 2014 IEEE international Symposium on Parallel&Distributed Processing (2014).

Stotzer, E., Jayaraj, A., Ali, M., Mitra, G., Rendell, A. P., Lintault, I. 2013. OpenMP on the Low-Power TI Keystone II ARM/DSP System-On-Chip. Published in Proceedings of the 9th international Conference on OpenMP in Era of Low Power Devices and Accelerators (Canberra, Australia, September 16 - 18, 2013). 

Igual, F. D., Ali, M., Friedmann, A., Stotzer, E., Wentz, T., and van de Geijn, R. A. 2012. Unleashing the high-performance and low-power of multi-core DSPs for general-purpose HPC. In Proceedings of the 2012 international Conference on High Performance Computing, Networking, Storage and Analysis (November 10 - 16, 2012). IEEE Computer Society, Washington, DC, 1-11. 

Ali, M., Stotzer, E., Igual, F. D., and van de Geijn, R. A. 2012. Level-3 BLAS on the TI C6678 Multi-core DSP. In Proceedings of the 2012 IEEE 24th international Symposium on Computer Architecture and High Performance Computing (October 24 - 26, 2012). IEEE Computer Society, Washington, DC, 179-186.

Beyer, J. C., Stotzer, E. J., Hart, A., and de Supinski, B. R. 2011. OpenMP for accelerators. In Proceedings of the 7th international Conference on OpenMP in the Petascale Era (Chicago, IL, June 13 - 15, 2011). B. M. Chapman, W. D. Gropp, K. Kumaran, and M. S. Müller, Eds. Springer-Verlag, Berlin, Heidelberg, 108-121. 

Chapman, B., Huang, L., Biscondi, E., Stotzer, E., Shrivastava, A., and Gatherer, A. 2009. Implementing OpenMP on a high performance embedded multicore MPSoC. In Proceedings of the 2009 IEEE international Symposium on Parallel&Distributed Processing (May 23 - 29, 2009). IEEE Computer Society, Washington, DC, 1-8. 

## Tutorial Experience
Hands On OpenMP GPU programming tutorial. Full day: SC18.

Advanced OpenMP: Performance and 4.x Features. Full Day: SC14, SC15, SC16, SC17.  

Presented by Bronis de Supinski (LLNL), Michael Klemm (Intel), Eric Stotzer and Christian Terboven (RWTH Aachen) and Ruud van der Pas (Oracle).  

Advanced OpenMP: Performance and 4.x Features. Half-Day: ISC14, ISC15, ISC16, ISC17. Presented by Bronis de Supinski, Michael Klemm, Eric Stotzer, and Christian Terboven.

OpenMP Accelerator Model.  Eric Stotzer.  IWOMP 2014 and IWOMP 2015.

The Latest Development of OpenMP 4.0 and 4.5, including the OpenMP offload model.  Alexandre Eichenberger (IBM) and Eric Stotzer. Half-day at PPoPP 2017, Austin, TX, USA.

## Selected Talks
Towards Using OpenMP in Embedded Systems. Keynote talk, OpenMPCon 2015 (RWTH Aachen University, Germany).

OpenMP Memory Model on Embedded Heterogeneous Multicore Systems. Invited talk, 2nd Annual Workshop on PGAS and Shared Memory Extensions for Heterogeneous Architectures, PGAS-X 2012.

Using OpenMP to Program Embedded Heterogeneous Systems. Invited talk, SIAM Conference on Parallel Processing for Scientific Computing, SIAM-PP12.

Parallel Programming for Embedded Multicore Processors Using OpenMP. Multicore Expo 2011.

