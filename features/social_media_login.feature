Feature: Socail-Media-Login
As a PhD Qual User
I should be able to login to the system using my Google or Facebook account
So that I don't have to manage separate credentials for this service

Scenario: Facebook-Login and Google-Login Link is present
Given I am on the login page 
Then I should see "Facebook"
And I should see "Google"

Scenario: Facebook-Login and Google-Login Link is present
Given I am on the login page 
Then I should see "Facebook"
And I should see "Google"

#Scenario: I should redirect to Facebook page on click facebook
#Given I am on the login page
#When I follow "facebook" 
#Then I should be on the Facebook page
#And I should see "Facebook"