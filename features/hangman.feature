Feature: Hangman

Scenario: Start game
	Given a word "rework"
	When game start
	Then tries is 12
	And length is 6
	And used is "AEIOU"
	And Discovered is "_E_O__"