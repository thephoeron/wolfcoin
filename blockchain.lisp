;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*-
;;;; file: blockchain.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin)

;; Using CL-STORE+Ironclad, this should be stored to disk in a user directory
(defparameter *blockchain* (make-hash-table))

;; Maybe extend the block hash-id string to include timestamp and mint
(defun generate-block-hash ()
  "Generate a unique and random hash-id."
  (let ((ctx (isaac:init-kernel-seed :is64 t)))
    (format nil "~64,'0x" (isaac:rand-bits-64 ctx 1024))))

(defclass tx-block ()
  ((id :initarg :id :reader id
       :documentation "The Hash-ID of the Block")
   (mint :initarg :mint :reader mint
         :documentation "The Mint of the block")
   (previous-block :initarg :previous-block :reader previous-block
                   :documentation "The Hash-ID of the previous block")
   (created-time :initarg :created-time :reader created-time
                 :documentation "The timestamp the block was created.")
   (transactions :initarg :transactions :accessor transactions
                 :documentation "The list of transactions on this block")))

(defgeneric block-height (tx-block)
  (:documentation "Get the block-height of the current block on the blockchain."))

(defgeneric number-of-transactions (tx-block)
  (:documentation "Count the transactions on the block."))

(defgeneric valid-block-p (tx-block)
  (:documentation "Block validator predicate."))

(defgeneric longest-chain-p (tx-block)
  (:documentation "Ensure that current block is on the longest blockchain."))

(defgeneric push-block-to-blockchain (tx-block blockchain)
  (:documentation "Push new block to local blockchain."))

(defgeneric push-tx-to-latest-block (tx tx-block blockchain)
  (:documentation "Find the latest block on the blockchain and push transaction to it."))

;; EOF
