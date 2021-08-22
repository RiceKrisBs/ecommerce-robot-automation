*** Settings ***
Documentation       Test suite for homepage functionality of site

Resource            ../../src/keywords/footer.robot
Resource            ../../src/settings/base.robot

Test Setup          Open Store Homepage
Test Teardown       Close All Browsers

*** Test Cases ***
ERA-1: Given A User Navigates To The Homepage Then The Homepage Populates Correctly
    [Documentation]    Validate presence of major components on site homepage
    [Tags]    ERA-1    smoke
    Validate Presence Of Global Footer
