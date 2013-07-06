;;;; This is the main file for running all of the My Tracks knowledge 
;;;; finder functions and abilities

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: June 30, 2013

(defpackage :knowledge-finder
  (:nicknames :kf)
  (:use :common-lisp)
  (:documentation "The primary package for parsing and processing data"))

(in-package :kf)

;; The main function to parse a data file and perform a data analysis. 
;; Later on, there may be several versions of this for different analyses.
(defun run-analysis (filename)
  (load-libraries)
  (parse:parse-and-store filename))
