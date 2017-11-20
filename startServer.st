| contents port |

contents := [ (FileStream readOnlyFileNamed: 'port.txt') contents asInteger]
	on: FileDoesNotExistException
	do: [ :signal | 5000 ].
port := contents isNil ifTrue: [5000] ifFalse: [contents].

(Teapot configure: {(#defautOutput -> #html). (#port -> port). (#debugMode -> true)})
	GET: '/' -> 'Hello World';
	start
