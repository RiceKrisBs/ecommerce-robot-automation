*** Settings ***
Documentation       Base environment setup file

Resource            ./libraries.robot

*** Variables ***
${BROWSER}          headlesschrome
${ENV}              None
@{ALLOWED_ENVS}     prod    stage

*** Keywords ***
Set Initial Environment
    [Documentation]    Use provided environment to import appropriate base variables
    ${ENV}    Convert To Lower Case    ${ENV}
    IF    $ENV in $ALLOWED_ENVS
        Import Variables    ${CURDIR}/environments/${ENV}_env.py
    ELSE
        Fatal Error    msg= Invalid environment provided
    END

Open Store Homepage
    [Documentation]    Opens a new browser to homepage
    Set Initial Environment
    Open Browser    ${HOMEPAGE}    ${BROWSER}
