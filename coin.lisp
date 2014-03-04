;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*- file: coin.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin)

(defclass coin ()
  ((value :initarg :value :initval 0 :accessor value
          :documentation "The value of the current coin.")
   (origin :initarg :origin :initval nil :accessor origin
           :documentation "Origin of current coin, a verifiable transaction list.")))

;; EOF
