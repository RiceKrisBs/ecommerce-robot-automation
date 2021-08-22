*** Settings ***
Documentation       Locators for the global footer

*** Variables ***
# Newsletter container
${LOC_NEWSLETTER_TXT_BOX}       css=input#newsletter-input

# Follow Us container
${LOC_FOLLOW_US_FB}             css=li.facebook>a
${LOC_FOLLOW_US_TW}             css=li.twitter>a
${LOC_FOLLOW_US_YT}             css=li.youtube>a
${LOC_FOLLOW_US_GP}             css=li.google-plus>a

# Categories container
${LOC_CATEGORIES_HEADER}        css=section.blockcategories_footer>h4
${LOC_CATEGORIES_WOMEN}         //section[contains(@class,'blockcategories_footer')]//a[contains(text(),'Women')]

# Information container
${LOC_INFORMATION_HEADER}       //section[contains(@class,'footer-block')]/h4[text()='Information']
${LOC_INFO_SPECIALS}            css=section.footer-block a[title='Specials']
${LOC_INFO_NEW_PRODUCTS}        css=section.footer-block a[title='New products']
${LOC_INFO_BEST_SELLERS}        css=section.footer-block a[title='Best sellers']
${LOC_INFO_OUR_STORES}          css=section.footer-block a[title='Our stores']
${LOC_INFO_CONTACT_US}          css=section.footer-block a[title='Contact us']
${LOC_INFO_TOS}                 css=section.footer-block a[title^='Terms']
${LOC_INFO_ABOUT_US}            css=section.footer-block a[title='About us']
${LOC_INFO_SITEMAP}             css=section.footer-block a[title='Sitemap']

# My account container
${LOC_MY_ACCT_ORDERS}           css=section.footer-block a[title$='orders']
${LOC_MY_ACCT_CREDIT}           css=section.footer-block a[title$='slips']
${LOC_MY_ACCT_ADDR}             css=section.footer-block a[title$='addresses']
${LOC_MY_ACCT_PERSONAL}         css=section.footer-block a[title$='information']

# Store information container
${LOC_STORE_STREET}             //i[@class='icon-map-marker']/ancestor::li
${LOC_STORE_PHONE}              //i[@class='icon-phone']/ancestor::li
${LOC_STORE_EMAIL}              //a[text()='support@seleniumframework.com']
