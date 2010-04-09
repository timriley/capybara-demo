Feature: Managing articles
  In order to show off cucumber with capybara
  As a Ruby developer
  I want to run some scenarios with different browser simulators
  
  Scenario: Creating an article
    Given I go to the new article page 
    And I fill in "Title" with "JavaScript Testing with Cucumber and Capybara"
    And I press "Create"
    Then I should see "Article created"

  Scenario: Deleting an article
    Given an article exists
    When I go to the article's page
    When I follow "Delete"
    Then I should see "Article deleted"
    
  @javascript
  Scenario: Endless pagination with AJAX
    Given 10 articles exist
    When I go to the articles page
    Then I should see 5 articles
    When I follow "More articles"
    Then I should see 10 articles
