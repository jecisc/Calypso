execution
buildResult: aQueryResult
	
	| methods |
	methods := OrderedCollection new.
	
	scope classesDo: [ :eachClass | 
		methods addAll: (self methodsToImplementIn: eachClass)].
	
	aQueryResult fillWith: methods