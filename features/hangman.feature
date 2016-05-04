Feature: Hangman

Scenario: Start game
	Given a word 'rework'
	When game start
	Then tries is 12
	And length is 6
	And used is "AEIOU"
	And Discovered is "_E_O__"

@wip
Scenario: type an incorrect letter
    Given start game with word 'rework'
    When type an incorrect letter "Z"
    Then length is 6
    And tries is 11
    And used is "AEIOU"
    And Discovered is "_E_O__"
