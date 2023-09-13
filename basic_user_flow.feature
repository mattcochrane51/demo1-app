Feature: Adding devices to the app store

  As a user of the app store
  I want to be able to add a device through a config/install wizard
  So that I can see the device added to my device list within the correct organization and tenant.

  Scenario: Successfully adding a device
    Given I am on the app store page
    And I am in the correct organization and tenant
    When I click the "Add Device" button
    Then the device config/install wizard modal should appear
    When I complete the 4-step config/install wizard
    And I click the "Add" button at the last step of the wizard
    Then the modal should disappear
    And the device should be added to my device list after installation completes

  # Additional scenarios can be added here for other related behaviors,
  # such as error handling or what happens if the user tries to add a device 
  # while not in the correct organization or tenant.
8