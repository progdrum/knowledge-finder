;;;; This is the object definition file for my drum practice data

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: July 1, 2013

(defclass drum-practice (basic-data-object)
  ((date :initarg :date
	 :accessor :date)
   (day-of-week :initarg :day-of-week
		:accessor :day-of-week)
   (rudiment-id :initarg :rudiment-id
		:accessor :rudiment-id)
   (rudiment :initarg :rudiment
	     :accessor :rudiment)
   (nominal-bpm :initarg :nominal-bpm
		:accessor :nominal-bpm)
   (goal-bpm :initarg :goal-bpm
	     :accessor :goal-bpm)
   (goal-reached? :initarg :goal-reached?
		  :accessor :goal-reached?)
   (goal-differential :initarg :goal-diff
		      :accessor :goal-diff)
   (notes :initarg :notes
	  :accessor :notes))
  (:documentation "The class for maintaining DRUM-PRACTICE data objects"))
