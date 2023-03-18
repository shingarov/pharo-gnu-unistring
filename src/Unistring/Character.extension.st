Extension { #name : #Character }

{ #category : #'*Unistring' }
Character >> gtInspectorCharacterIn: composite [
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: 'Character';
		display: [
			{'self' -> self.
			'codepoint' -> self codePoint.
			'name' -> self unicodeName.
			'unicode' -> (String streamContents: [ :stream | 
				stream << 'U+'.
				self codePoint printOn: stream base: 16 nDigits: 4 ])} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: [ :each | each value printString ];
		send: #value
]

{ #category : #'*Unistring' }
Character >> unicodeName [
	^LibUnistring uniqueInstance unicode_character_name: self codePoint  _: (ByteArray new: 1024)
]
