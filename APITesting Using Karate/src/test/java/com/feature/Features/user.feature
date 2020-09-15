@ignore
Feature: Get Users

Scenario: Get User details 
 Given url 'https://reqres.in/api/users/3'
 When method GET
 Then status 200
 Then print response