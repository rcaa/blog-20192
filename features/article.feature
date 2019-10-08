Feature: Article
  As a Blog user
  I want to add, remove, show, and update an article
  so that I do not need to do it manually

  Scenario: Creating new article correctly
    Given I am at new articles page
    When I fill title 'Ruby is awesome' and text 'Ruby is really awesome'
    And I click on create article
    Then I see that the article entitled 'Ruby is awesome' is correctly created

