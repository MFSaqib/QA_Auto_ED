@ignore
Feature: Check the User Details 

Background:
	Given def output = read('../Data/Master.json')

	Scenario: Verify User 2 details 

 		Given url 'https://reqres.in/api/users/2'
 		When method GET
 		Then status 200
		Then print response
 		And match response == output[0]
 		
 	@parallel=false	
	Scenario: Verify User 3 details 

 		Given url 'https://reqres.in/api/users/3'
 		When method GET
 		Then status 200
#		Then print response
#		And match response == output[1]