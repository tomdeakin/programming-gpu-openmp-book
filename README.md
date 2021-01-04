# openmp_gpu_book

This is the Source Code for the book "programming your gpu with OpenMP".

A few comments about how the source is laid out.

The bulk of the book is in the directory, "chapters".   Go
to that directory and type "make" to build a PDF of the book.
When done and you're ready to get rid of temporary files 
constructed during the book build-process, type "make clean".

Each chapter is in its own directory.  You'll see these inside
the "chapters" directory.  The structure of each of these directories
is consistent.  There is the text of the chapter itself (chapter.tex)
and a subdirectory holding the figures for that chapter.  In a small
number of cases, we put tables in the "figures" directory as well.

This format for the book approximates that from Ruud's book "OpenMP next".
It is as close as I can get to the final format used by the publisher.
so we have the front-matter and end-matter with us now in their own
subdirectories.  

Macros, style-sheets, and experiments with LaTex are in the 
director "tex".  We are specifically forbidden by the publisher 
to create our own macros.  We need over time to migrate to the
standard macros they give us to use.

There is one file in "tex" you'll want to use heavily.  This is
the one Ruud gave us, "ompbinding.sty".  Look at the file a while and
you'll see what it defines. Instead of painstakingly formatting 
each and every "#pragma whatever" you just invoke the macro they've 
defined for us.  This will in the long run make our lives easier and
give us a consistent look across the book.


