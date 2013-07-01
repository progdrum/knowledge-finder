;;;; This is the object definition file for Google My Tracks data 
;;;; The class features slots for each aspect of the data provided 
;;;; by the program in the CSV output

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: June 30, 2013

(defclass mytracks (basic-data-object)
  ((segment :initarg :segment
	    :accessor :segment)
   (point :initarg :point
	  :accessor :point)
   (latitude :initarg :latitude
	     :accessor :latitude)
   (longitude :initarg :longitude
	      :accessor :longitude)
   (altitude :initarg :altitude
	     :accessor :altitude)
   (bearing :initarg :bearing
	    :accessor :bearing)
   (accuracy :initarg :accuracy
	     :accessor :accuracy)
   (speed :initarg :speed
	  :accessor :speed)
   (time :initarg :time
	 :accessor :type)
   (power)
   (cadence)
   (heart-rate))
  (:documentation "The Google My Tracks data object for modeling data"))
