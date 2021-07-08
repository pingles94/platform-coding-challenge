Feature: Testing a roomba service

	Scenario: The user sends an input to the service
		Given the user is connected to the service
		When the user sends an "<input file>"
		Then the user should receive back a response status
		And the output should match the "<expected output>"

	Examples: 
		| validinput1.json    | 200 | validoutput1.json    |
		| validinput2.json    | 200 | validoutput2.json    |
		| invalidinput1.json  | 400 | invalidoutput1.json  |
		| invalidinput2.json  | 400 | invalidoutput2.json  |
		| invalidinput3.json  | 400 | invalidoutput3.json  |
		| invalidinput4.json  | 400 |                      |
		| invalidinput5.json  | 400 | invalidoutput5.json  |
		| invalidinput6.json  | 400 |                      |
		| invalidinput7.json  | 400 | invalidoutput7.json  |
		| invalidinput8.json  | 400 | invalidoutput8.json  |
		| invalidinput9.json  | 400 | invalidoutput9.json  |
		| invalidinput10.json | 400 |                      |
		| invalidinput11.json | 400 |                      |
		| invalidinput12.json | 400 |                      |
		| invalidinput13.json | 400 |                      |
		| invalidinput14.json | 400 | invalidoutput14.json |
		| invalidinput15.json | 400 |                      |
		| invalidinput16.json | 400 |                      |
		| invalidinput17.json | 400 | invalidoutput1.json  |