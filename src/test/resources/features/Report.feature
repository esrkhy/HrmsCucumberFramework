Feature: Report
  Background: 
    Given I am logged into HRMS
    And I navigated to the Reports Page

  Scenario Outline: Search for invalid report
    When I enter an invalid "<reportName>" report
    And I click search button
    Then I see "No Records Found" message
   
   Examples:
      | reportName|
      | Regression|
      | Smoke     |
  Scenario: Search for valid report
    When I enter an valid "PIM Sample Report" report
    And I click search button
    Then I see the search "PIM Sample Report"
   