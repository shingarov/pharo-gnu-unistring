Class {
	#name : #LibUnistring,
	#superclass : #FFILibrary,
	#category : #Unistring
}

{ #category : #API }
LibUnistring >> uc_is_general_category_withtable: uc _: bitmask [
	^ self ffiCall: #( Boolean uc_is_general_category_withtable ( uint32 uc, uint32 bitmask ) )

]

{ #category : #API }
LibUnistring >> unicode_character_name: uc _: buffer [
	^ self ffiCall: #( String unicode_character_name ( uint32 uc, char * buffer ) )

]

{ #category : #'accessing platform' }
LibUnistring >> unixLibraryName [
	^'libunistring.so.2'
]
