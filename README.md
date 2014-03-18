## WOLFCOIN

Common Lisp Crypto-currency client, protocol, and wallet

*Work-in-progress.*

#### Core ideas

* Currency symbols and Units:
	* Currency ID: WLF
	* Currency symbol:
	    * Unicode: ⒲ (#\parenthesized_latin_small_letter_w)
	    * ASCII: (w)
	* 1 mWLF = ⒲ 0.001
	* 1 μWLF = ⒲ 0.000001
* LTK cross-platform client UI? or local Web Wallet?
	* LTK:
    	* lighter-weight than QT
    	* better native look-and-feel
    * Local Web Wallet:
    	* Faster development time
    	* Wallets encrypted by default
    	* Easily create and manage multiple local wallets
    	* Reduce dependencies, Hunchentoot already loaded and running for JSON-RPC
    	* Would have to be live-updating, use JS templates such as handlebars
* Encrypted blockchain, tracker, and router
	* Transactions validated randomly and anonymously
* Randomized mining using ISAAC-64 algorithm
	* proof-of-work: all mining attempts stored in the blockchain with block id, cannot be reused
	* proof-of-origin: every coin is verifiable by source and transaction history

#### Support this Project

You can donate Bitcoin or Litecoin to support this project:

BTC: 17VSuaCJQyNotz2Mj9W4N5nEJPBmZJ3g7j

LTC: LhkxacqZ8wAcPgjzgRAfHpVUnHYG9XvRm3

#### Contributing

If you would like to contribute to the development of Wolfcoin, you may fork and create a pull-request.

#### License

This project is released under the MIT License.  Please see LICENSE for more information.
