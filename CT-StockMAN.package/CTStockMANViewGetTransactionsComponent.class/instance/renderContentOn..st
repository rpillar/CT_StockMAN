rendering
renderContentOn: html

	( scheduleFlag = 1 )
		ifTrue: [  
			self messageComponent messageString: 'Please select a Shop, Transaction start and end dates and then GET TRANSACTIONS in order to retrieve the transaction data details for a shop.'; messageType: 'info'.
		]
		ifFalse: [  
			self messageComponent messageString: 'Please select a Shop, Transaction and Schedule dates and then SET SCHEDULE in order to schedule the retrieval of transaction data.'; messageType: 'info'.
		].
	
	"Get Transactions page ..."		
	self renderGetTransactionsContentOn: html.
	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).
	html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) ) .
	html document addLoadScript: ( ( JSStream on: '$(''.datepicker'').datepicker({ selectMonths: true, selectYears: 15, today: ''Today'', clear: ''Clear'', close: ''OK'', closeOnSelect: false, format: ''yyyy-mm-dd'', hiddenName: true })' ) ).
	html document addLoadScript: ( ( JSStream on: '$(''.timepicker'').on(''mousedown'', function(e){e.preventDefault();})' ) ).
	html document addLoadScript: ( ( JSStream on: '$(''.timepicker'').timepicker({ default: ''now'', fromnow: 0, twelvehour: false, donetext: ''OK'', cleartext: ''Clear'', canceltext: ''Cancel'', autoclose: false, ampmclickable: true, aftershow: function(){} })' ) ) .