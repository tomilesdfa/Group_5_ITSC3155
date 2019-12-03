Feature: Add a new expense entry
  
    As a user
    So that i can easily tally up my expenses
    I want to be able to add a new expense
    
Scenario: As a user I want to be able to navigate from the homepage to the new expense form
  Given I am on the home page
  When I click on the "View/Add Expenses" link
  Then I should be on the "Listing Expenses" page
  When I click on the "New Expense" link
  Then I should be on the "New Expense" page
  And I should see the "Description" field
  And I should see the "Price" field