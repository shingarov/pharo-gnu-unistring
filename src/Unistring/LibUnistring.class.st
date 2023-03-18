Class {
	#name : #LibUnistring,
	#superclass : #FFILibrary,
	#category : #Unistring
}

{ #category : #API }
LibUnistring >> unicode_character_name: uc _: buffer [
	^ self ffiCall: #( String unicode_character_name ( uint32 uc, char * buffer ) )

]

{ #category : #'accessing platform' }
LibUnistring >> unixLibraryName [
	^'libunistring.so.2'
]
