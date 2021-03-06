rendering
renderAddCategoryButtonsOn: html

	| validCategoryInput |
	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-top:25px;margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | 
								validCategoryInput := self validateCategory.
								( validCategoryInput = '' )
									ifTrue: [ 
										"add category data"
										self addOrUpdateCategory.
										self categoryName: ''.
										self messageComponent errorMessage: 'Category Updated. Continue to Add / Edit or Close.'.
										s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ).
										s << ( JSStream on: '$(''.tooltipped'').tooltip()' ).
									]
									ifFalse: [  
										self messageComponent errorMessage: validCategoryInput. 
										s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ). 
								]	
							] );
						with: 'Save'.			
				]	
			].	