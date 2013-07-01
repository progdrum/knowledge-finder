;;;; The code contained in this file parses the CSV data exported from the 
;;;; My Tracks Google app and stores them into a data structure for further 
;;;; processing

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: June 29, 2013

(defpackage :parse
  (:use :common-lisp
	:split-sequence)
  (:export "parse-and-store")
  (:documentation
   "A package containing CSV and other parsing-related functions and methods"))

(in-package :parse)

;; A method for parsing a CSV file and storing it in an associated data object
(defgeneric parse-and-store (obj file)
  (:documentation
   "Parses the CSV input file and stores it in the user-defined object according to that object's specific implementation of this method."))

(defun parse-and-store (file)
  (with-open-file (csv-input file :direction :input)
    ; The following line also needs to store the sequence.
    (split-sequence:split-sequence #\, #|Line read in|#)))
