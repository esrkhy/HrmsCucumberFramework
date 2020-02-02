#Author: syntax team (asel@syntaxtechs.com)
@sprint2 @addemployee
Feature: Add Employee

  Background: 
    Given I am logged into HRMS
    And I navigated to Add Employee Page

 @smoke
  Scenario: Add new Employee
    When I add "John", "S" and "Smith"
    And I click Save
    Then I see Employee has been succesfully added

  @regression
  Scenario Outline: Add new Employee
    When I add "<FirstName>", "<MiddleName>" and "<LastName>"
    And I click Save
    Then I see Employee with "<FirstName>", "<MiddleName>" and "<LastName>" is displayed

    Examples: 
      | FirstName | MiddleName | LastName |
      | James     |            | Smith    |
      | Jane      | J          | Smith    |
      | Sasha     | J          | Smith    |
      | David     | J          | Smith    |
  @inProgress
   Scenario: Add and Modify Employee Details
    When I enter employee details
 
     | FirstName | MiddleName | LastName  | 
     | Esra      | Nur        | Kahyaoglu |
    And I click Save
    Then I am able to modify Employee Details
      | DriverLisence | ExpirationDate | SSN         | SIN     | Gender | MaritalStatus | Nationality | DOB        |
      | N78787886     | 2022-12-08     | 123-45-6789 | 7456123 | Female | Single        | Afghan      | 1999-02-08 |
      | N78587781     | 2024-12-08     | 555-45-6789 | 7481211 | Female | Single        | Turkish     | 1996-02-08 |
   Scenario: Add Employee without employee id
    When I add firstName, middleName and last name
    And I delete employee id
    And I click Save
    Then I see employee without employee id is being added

  Scenario: Add Employee negative scenario
    When I click Save
    Then I see required error message next to the first and last name

  Scenario: AddEmployee and Login Credentials
    When I add firstName, middleName and last name
    And I click on create login checkbox
    And I enter username, password and confirm password
    When I click Save
    Then I see Employee has been succesfully added