Feature: Register New Candidate 

	Scenario: New register on app
	When I press button Sou Novo
	And I fill out the registration initial fields
	And I fill the additional fields
	And I continued fill the additional fields
	And I press list item number 1
	And I press list item number 1
	And I press list item number 3
	And I finish register
	Then I close the app

