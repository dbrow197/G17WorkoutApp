Feature: Access user login
  
  As a user
  So I can see my next workouts
  I want to login and save my workouts
  
 Scenario: As user, I want to save my workouts
   Given I am on the homepage
   When I click on "Workout" link
   Then I should be on the "Log in" page
   And I should see the "Email" field
   And I should see the "Password" field
   