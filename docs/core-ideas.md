## Core ideas

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
	
