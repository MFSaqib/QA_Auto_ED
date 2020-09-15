@ignore
Feature: Check the User Details 

Scenario: Verify User details of 2 

	* def output = read('../Data/U1.json')


 		Given url 'https://reqres.in/api/users/2'
 		When method GET
 		Then status 200
		Then print response
 		And match response == output
 		And match response.data.id == 2
 		And match response.data.last_name != null

