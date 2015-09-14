;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*-
;;;; file: coin.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin)

;; deprecate COIN module, 9/14/2015

(defclass coin ()
  ((value :initarg :value :initform 0 :accessor value
          :documentation "The value of the current coin.")
   (tx-block :initarg :tx-block :initform nil :accessor tx-block
          :documentation "The hash-id of the source block.")
   (origin :initarg :origin :initform nil :accessor origin
           :documentation "Origin of current coin, a verifiable transaction list.")
   (created-date :initarg :created-date :initform (local-time:today) :reader created-date
                 :documentation "The LOCAL-TIME date object instance for when the coin was created.")))

(defgeneric valid-origin-p (coin)
  (:documentation "Coin origin validation predicate."))

;; EOF
