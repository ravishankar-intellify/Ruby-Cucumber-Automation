@nightly @moodle
Feature: Intellify.Login Event Moodle Sensor

  Scenario: F1: Verify that a logging in to moodle as an Instructure  sends a event to index
    Given I am logging in as an Instructure in Moodle
    When I am Successfully logged in as an Instructure
    Then An Instructure event should be successfully sent through moodle sensor to Intellify Raw Index

#  Scenario: F2: Verify that a logging in to moodle as an Student  sends a event to index
#    Given I am logging in as an Student in Moodle
#    When I am Successfully logged in as an Student
#    Then An Student event should be successfully sent through moodle sensor to Intellify Raw Index
#
#
#  Scenario: F3: Verify that a logging in to moodle as an Administrator  sends a event to index
#    Given I am logging in as an Administrator in Moodle
#    When I am Successfully logged in as an Administrator
#    Then An Administrator event should be successfully sent through moodle sensor to Intellify Raw Index