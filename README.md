## WOLFCOIN

Crypto-currency client, protocol, and wallet written in Common Lisp

*Work-in-progress.*

#### Core ideas

* Currency symbols and Units:
	* Currency ID: WLF
	* Currency symbol: ⒲
	* 1 mWLF = ⒲ 0.001
	* 1 μWLF = ⒲ 0.000001
* LTK cross-platform client UI
    * lighter-weight than QT
    * better native look-and-feel
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