@ignore
Feature: Create new User 


Background:
	Given def payload = read('../Data/Request.json')
	Given url 'https://reqres.in/api/users'



Scenario: Check New user creation 
		Then request payload
		And headers {Content-type : 'application/json', Accept : 'application/json'}
		When method POST 
		Then status 201
		Then print 'RESPONSE IS',response
		
		
