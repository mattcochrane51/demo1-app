@AS-1
Feature: Adding devices to the app store

  Scenario Outline: Successfully adding various types of devices
    Given I am on the app store page
    And I am in the organization "<organization>" and tenant "<tenant>"
    When I click the "Add Device" button
    Then the device config/install wizard modal for "<device_type>" should appear
    When I complete the 4-step config/install wizard
    And I click the "Add" button at the last step of the wizard
    Then the modal should disappear
    And the "<device_type>" should be added to my device list after installation completes

    Examples:
      | device_type | organization  | tenant    |
      | Smartphone  | OrgA          | TenantX   |
      | Tablet      | OrgB          | TenantY   |
      | Smartwatch  | OrgC          | TenantZ   |
