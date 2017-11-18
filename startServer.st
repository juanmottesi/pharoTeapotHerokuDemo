| port |

port := (FileStream	readOnlyFileNamed: 'port.txt') contents asInteger.

(Teapot configure: {(#defautOutput -> #html). (#port -> port). (#debugMode -> true)})
    GET: '/' -> 'Hello World';
    start.
