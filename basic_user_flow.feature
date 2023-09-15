@IOTPE-5894
Feature: Basic User Flow

   UserStory: Edge Store Device Management and Configuration

   As a customer of the Edge Store platform,

   I want to
    * Be able to log into thje Edge Store using the WEB-EAM option.
    * Have the capability to select an organisation and tenant, and then see my selection visually represented.
    * Have the ablility to select and provision an online device and view its state as "Proviosning".
    * Be able to isntall and uninstall Edge Store Applications.
    * Access and modify the network configuration of a device, including setting specific configutations like Tech-WLAN with a hidden SSID option.
    * Be informed of the risks when changing network configurations.
    * Restart the deive and have assurance that is connects successfully.
    So that
    I can manage,configure and monitor devices within the Edge Store seamlessly and with confidence in their correct setup and operation.

Scenario: Login to the Edge Store
Given I have clicked the "login button" on the "Edge Store landing page"
When I select "WEB-EAM" to login
And I successfully complete the login process
Then I will be presented with the "Tenants Overview" screen

Scenario: Select an Organisation and Tenant
Given I am the tentants Overview screen 
When I select the "P01-Munich" Organisation
And I select the 'Business Acceptance Test 1234567890ß!"§$%&/()=?`^°,.-;:_'
Then the tenet gets created in the "IOTPE Global" organisation.

Scenario: Select an online and provisioning device
Given I have selected the "device tab"
When I select an online and provisioning device
Then the device gets a "Provisioning" state

Scenario: Install the BVIS Application
Given I have successfully provisioned the device 
And I have clicked on the "device"
When I click on the install App button 
And I select "BVNT Viewer" from the app list.
Then the "BVNT Viewer" should be installed successfully

Scenario: Install OPC UA Connector App
Given I have successfully provisioned the device 
And I have clicked on the "device"
When I click on the install App button 
And I select "OPC UA Connector" from the app list.
And I select "the latest release" from the "Select Application Version dropdown"
And I slect 
Then the "BVNT Viewer" should be installed successfully

Scenario: Create a screenshot of the Conky Screen
Given I ahve selected an online and provisioned device
When I click on the deive and select "display tab" under Operations
And I click the "Take Screenshot" button
Then I should see a screenshot of the conky screen.

Scenario: Set a static IP address
Given I have selected an online and provisioned device
And I have selected the network tab
When I click the pencil to edit the network configuration
And I selecet the "Static Port Radial"  and configure and save the network settings 
Then Then the network setting should correctly display the static IP address. 

Scenario: Shut down the device
Given I have shutdown the device manually
When I check the device status in the "Edge Store"
Then the device should be offline
And I can still swap the device
And all other configuration is not possible

Scenario: Restart device button
When I press the restart button on the device
Then the device resarts
And I can still use the device swap feature
And All other configurations are not possible 

Scenario: "Patch Now" of edge device
Given I have selected the "Patching tab"
When I click the "Patch Now button"
And I click "confirm"
Then the patching process should complete "successfully" 

Scenario: Replace device
Given I have clicked the "Replace device button"
When I select an online replacement device 
And I click the next button
And I click the "Replace button"
Then the device should be successfully replaced

@IOTPE-7837
Scenario: Test configure device for using Production-WLAN
Given 
When 
Then 

@IOTPE-7749
Scenario: Test configure device for using tech-WLAN
Given 
When 
Then 