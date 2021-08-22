*** Settings ***
Documentation       Keywords related to the global footer

Resource            ../locators/footer.robot
Resource            ../settings/libraries.robot

*** Variables ***
@{SOCAIAL_LINKS}    ${LOC_FOLLOW_US_FB}    ${LOC_FOLLOW_US_TW}    ${LOC_FOLLOW_US_YT}    ${LOC_FOLLOW_US_GP}

*** Keywords ***
Validate Presence Of Global Footer
    [Documentation]    Wrapper keyword to validate presence of items in footer
    Validate Presence Of Footer Blocks
    Validate Presence Of Social Media Links

Validate Presence Of Footer Blocks
    [Documentation]    Verify links are visible in footer
    Wait Until Element Is Visible    ${LOC_CATEGORIES_HEADER}
    Wait Until Element Is Visible    ${LOC_INFORMATION_HEADER}
    Wait Until Element Is Visible    ${LOC_MY_ACCT_ORDERS}

Validate Presence Of Social Media Links
    [Documentation]    Verify social media links are present in footer
    FOR    ${social_link}    IN    @{SOCAIAL_LINKS}
        Wait Until Element Is Visible    ${social_link}
    END
