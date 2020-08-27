Feature: Search article
  As a Blog user
  I want search an article
  so that I can find existing articles

  Scenario: Searching article by title
    Given I am at articles page
    When I fill the search text field with title 'Software Engineering'
    And I click on search article
    Then I see the article entitled 'Software Engineering' is listed