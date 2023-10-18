Class {
	#name : #UnicodeGeneralCategoryBitmask,
	#superclass : #SharedPool,
	#classVars : [
		'Cc',
		'Cf',
		'Cn',
		'Co',
		'Cs',
		'Ll',
		'Lm',
		'Lo',
		'Lt',
		'Lu',
		'Mc',
		'Me',
		'Mn',
		'Nd',
		'Nl',
		'No',
		'Pc',
		'Pd',
		'Pe',
		'Pf',
		'Pi',
		'Po',
		'Ps',
		'Sc',
		'Sk',
		'Sm',
		'So',
		'Zl',
		'Zp',
		'Zs'
	],
	#category : #Unistring
}

{ #category : #'as yet unclassified' }
UnicodeGeneralCategoryBitmask class >> codepoint: ucs isGeneralCategory: cat [
	| bitmask |
	bitmask := (self bindingOf: cat) value.
	^LibUnistring uniqueInstance uc_is_general_category_withtable: ucs  _: bitmask
]

{ #category : #'as yet unclassified' }
UnicodeGeneralCategoryBitmask class >> generalCategoriesFor: ucs [
	^(classPool keys select: [ :cat | self codepoint: ucs isGeneralCategory: cat ]) asSet
]

{ #category : #'class initialization' }
UnicodeGeneralCategoryBitmask class >> initialize [
  Lu := 16r00000001.
  Ll := 16r00000002.
  Lt := 16r00000004.
  Lm := 16r00000008.
  Lo := 16r00000010.
  Mn := 16r00000020.
  Mc := 16r00000040.
  Me := 16r00000080.
  Nd := 16r00000100.
  Nl := 16r00000200.
  No := 16r00000400.
  Pc := 16r00000800.
  Pd := 16r00001000.
  Ps := 16r00002000.
  Pe := 16r00004000.
  Pi := 16r00008000.
  Pf := 16r00010000.
  Po := 16r00020000.
  Sm := 16r00040000.
  Sc := 16r00080000.
  Sk := 16r00100000.
  So := 16r00200000.
  Zs := 16r00400000.
  Zl := 16r00800000.
  Zp := 16r01000000.
  Cc := 16r02000000.
  Cf := 16r04000000.
  Cs := 16r08000000.
  Co := 16r10000000.
  Cn := 16r20000000
]
