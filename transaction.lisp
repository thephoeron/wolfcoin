;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*- file: transaction.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin)

(defclass transaction ()
  ((type :initarg :type :accessor type
         :documentation "Transaction type, one of 'merge', 'transfer', 'purchase', 'exchange'.")
   (coins :initarg :coins :accessor coins
          :documentation "List of coin object instances. Usually a list of one object except for merges.")
   (source :initarg :source :accessor source
           :documentation "The source wallet address.")
   (destination :initarg :destination :accessor destination
                :documentation "The destination wallet address.")))

(defgeneric valid-tx-p (transaction)
  (:documentation "Transaction validator predicate."))

;; EOF
