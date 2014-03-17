;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN-WALLET; Base: 10 -*- file: wallet/db.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin-wallet)

(defclass wallet ()
  ((id :initarg :wallet :reader id
       :documentation "The WALLET id integer.")
   (addresses :initarg :addresses :initform '() :accessor addresses
              :documentation "The list of addresses associated with this wallet.")
   (coins :initarg :coins :initform '() :accessor coins
          :documentation "The list collection of coin objects stored in this wallet.")))

;; EOF
