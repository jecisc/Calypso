tests
testNotifyingItemObserver

	| cursor observer |
	self queryInScope: ClyEnvironmentScope of: { Object. Array. String }.
	cursor := result openBrowserCursor.
	
	observer := ClyItemsObserverExample new.
	cursor itemObserver: observer.
	
	result itemsChanged.
	self assert: observer wasNotified