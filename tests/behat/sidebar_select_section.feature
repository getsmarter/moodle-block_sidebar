@block @block_ned_sidebar
Feature: Section setting
  As a teacher

  Background:
    Given the following "courses" exist:
      | fullname | shortname | summary | category |
      | Course 1 | C101      | Proved the course summary block works! |0        |
    And the following "users" exist:
      | username    | firstname | lastname | email            |
      | student1    | Sam       | Student  | student1@example.com |
      | teacher1    | Teacher   | One      | teacher1@example.com |
    And the following "course enrolments" exist:
      | user        | course | role    |
      | student1    | C101   | student |
      | teacher1    | C101   | editingteacher |
    And the following "activities" exist:
      | activity   | name                   | intro                         | course | idnumber    | section |
      | assign     | Test assignment name   | Test assignment description   | C101     | assign1     | 0       |
      | book       | Test book name         | Test book description         | C101     | book1       | 1       |
      | chat       | Test chat name         | Test chat description         | C101     | chat1       | 4       |
      | choice     | Test choice name       | Test choice description       | C110     | choice1     | 5       |
    And I log in as "teacher1"
    And I follow "Course 1"
    And I turn editing mode on
    And I add the "NED Sidebar" block

  Scenario: View the section activities in block
    When I click on "Edit" "link" in the "NED Sidebar" "block"
    And I choose "1" in the "Section"
    And I press "Save changes"
    Then I should see "Test book name" in the "NED Sidebar" "block"

