Data processing program

This program is intended to parse and find interesting information about data 
exported in CSV format from a variety of sources. Lisp objects (using CLOS) can 
be created for any sort of CSV data one may want to process and find interesting 
patterns and other information in/about. It is intended to be extensible and 
customizable.

This program incorporates the split-sequence library.

Included Files:

/:

parse.lisp
main.lisp
libraries.lisp
README.md (this file)
objects/

/objects:

mytracks.lisp
basic-data-object.lisp

Known Issues:

DEFOBJECT-FROM-DATA needs to be debugged
