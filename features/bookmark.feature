Feature: Should be able to bookmark the questions
As a PhD Qual user
I should be able to bookmark the questions and should be able to return to them

Scenario: See card ID in practice mode and bookmark the question and go to next
Given the following questions exist:
  | question  | option1 | option2 | option3 | option4 | option5 | answer |     category     |
  |  QueCat1  |   AA    |   BB    |    CC   |   DD    |   EE    |   AA   |     Networks     |
  |  QueCat2  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |    Algorithms    |
  |  QueCat3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     Software     |
  |  QueCat4  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   | Operating System |
And I am on the home page
Then I should see "Welcome"
When I follow "Start Practice"
Then I should be on Select Category page
When I check the checkbox "Networks"
And I check the checkbox "Algorithms"
And I check the checkbox "Software"
When I press "Start Practice"
Then I should see "Marked Questions:"
When I press "Next"
Then I should see "Question 2 of 3"
Then I should see "Card ID:"
When I click on bookmark
Then  I press "Next"
Then I should get marked questions "1"

Scenario: See card ID in practice mode and bookmark the question and go to previous
Given the following questions exist:
  | question  | option1 | option2 | option3 | option4 | option5 | answer |     category     |
  |  QueCat1  |   AA    |   BB    |    CC   |   DD    |   EE    |   AA   |     Networks     |
  |  QueCat2  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |    Algorithms    |
  |  QueCat3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     Software     |
  |  QueCat4  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   | Operating System |
And I am on the home page
Then I should see "Welcome"
When I follow "Start Practice"
Then I should be on Select Category page
When I check the checkbox "Networks"
And I check the checkbox "Algorithms"
And I check the checkbox "Software"
When I press "Start Practice"
Then I should see "Marked Questions:"
Then I should see "Question 1 of 3"
When I click on bookmark
Then I should get marked questions "1"
When I click "Next"
When I click on bookmark
Then I should see "Question 2 of 3"
Then I should get marked questions "2"
Then I click "Previous"

Scenario: See card ID in practice mode and bookmark the question and then unboomark it go to previous
Given the following questions exist:
  | question  | option1 | option2 | option3 | option4 | option5 | answer |     category     |
  |  QueCat1  |   AA    |   BB    |    CC   |   DD    |   EE    |   AA   |     Networks     |
  |  QueCat2  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |    Algorithms    |
  |  QueCat3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     Software     |
  |  QueCat4  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   | Operating System |
And I am on the home page
Then I should see "Welcome"
When I follow "Start Practice"
Then I should be on Select Category page
When I check the checkbox "Networks"
And I check the checkbox "Algorithms"
And I check the checkbox "Software"
When I press "Start Practice"
Then I should see "Marked Questions:"
Then I should see "Question 1 of 3"
When I click on bookmark
Then I should get marked questions "1"
When I click on bookmark
Then I click "Next"

