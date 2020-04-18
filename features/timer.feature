Feature: Take a quiz
As a PhD Qual user
So that I can take simulation quizs
A score correspoding to the correct answers I got should be shown

Scenario: Should show see a warning when the value is higher than 1440
Given I am on the home page
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "All"
When I fill in "timervalue" with "1441"
And I press "Start Quiz"
Then I should see "Invalid timer value. Timer value is too high."

Scenario: Should show Please enter timer value when timer value not entered
Given I am on the home page
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "All"
And I press "Start Quiz"
Then I should see "Please enter timer value"

Scenario: Should show error Invalid timer value. Please enter a valid numeric value not when we enter string
Given I am on the home page
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "All"
When I fill in "timervalue" with "hell"
And I press "Start Quiz"
Then I should see "Invalid timer value. Please enter a valid numeric value"

Scenario: Should show error Invalid timer value. Please set timer value to be at least 1 minute. when I enter a negative number
Given I am on the home page
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "All"
When I fill in "timervalue" with "-4"
And I press "Start Quiz"
Then I should see "Invalid timer value. Please set timer value to be at least 1 minute."

Scenario: Should show error Invalid timer value. Too many characters in timer value. when I enter more than 4 characters
Given I am on the home page
When I follow "Start Quiz"
Then I should be on Quiz Category page
When I choose radio button "All"
When I fill in "timervalue" with "45555"
And I press "Start Quiz"
Then I should see "Invalid timer value. Too many characters in timer value."