## WOLFCOIN

Crypto-currency client, protocol, and wallet written in Common Lisp

*Work-in-progress.*

#### Core ideas

* Encrypted blockchain, tracker, and router
	* Transactions validated randomly and anonymously
* Randomized mining using ISAAC-64 algorithm
	* proof-of-work: all mining attempts stored in the blockchain with block id, cannot be reused
	* proof-of-origin: every coin is verifiable by source and transaction history

