Feature: Data Driven users

Background:

 Given url 'http://dummy.restapiexample.com/'

	
Scenario Outline: Creating new users in DB 


	Given path 'api/v1/create'
	And request {"name":<NAME>,"salary":<SAL>,"age":<AGE>}
	Then method POST
	Then status 200
	Then print 'response data is',response
	#Given def result = response 
	
	
	
	#Given path 'api/v1/employee/' +result.data.id
	#Then method GET
	#Then status 200
	#Then print 'response data 1',response
	#And match response.data contains {id:'#('result.data.id'}
	
	
	Examples:
	|NAME|SAL|AGE|
	|MFS100|2300|23|

	
	
