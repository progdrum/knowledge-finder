;;;; The code contained in this file parses the CSV data exported from the 
;;;; My Tracks Google app and stores them into a data structure for further 
;;;; processing

;;;; Author: progdrum
;;;; Authored: June 29, 2013

(in-package 'parse)

;; Use split-sequence to break on commas

;; Store information in hash tablek, categories are the keys
