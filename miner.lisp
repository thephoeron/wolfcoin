;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*-
;;;; file: miner.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :wolfcoin)

;; Find and store hashes/second

;; Start a timer for mining based on HPS

(defun generate-wolfcoins ()
  "Start the miner threads.")

(defun increment-extra-nonce ()
  "Modify the extranonce in a block.")

(defun check-work ()
  "Check mined block.")

(defun transform ()
  "Base mining transform.")

;; EOF
