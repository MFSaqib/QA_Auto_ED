Feature: Check the User Details 

Scenario: Verify User details 
 Given url 'https://reqres.in/api/users?page=2'
 When method GET
 Then status 200
 Then print 'response is',response
 

