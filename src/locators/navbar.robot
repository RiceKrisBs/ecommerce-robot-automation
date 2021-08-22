*** Settings ***
Documentation       Locators for the global navbar

*** Variables ***
# Women option
${LOC_WOMEN_NAVBAR}                     css=a[title=Women]
${LOC_TOPS_SUBNAV}                      css=a[title=Tops]
${LOC_TSHIRTS_SUBNAV}                   css=ul.submenu-container a[title=T-shirts]
${LOC_BLOUSES_SUBNAV}                   css=a[title=Blouses]
${LOC_DRESSES_SUBNAV}                   //a[@title='Women']/ancestor::li//a[@title='Dresses']
${LOC_WOMEN_CASUAL_DRESSES_SUBNAV}      //a[@title='Women']/ancestor::li//a[@title='Casual Dresses']
${LOC_WOMEN_EVENING_DRESSES_SUBNAV}     //a[@title='Women']/ancestor::li//a[@title='Evening Dresses']
${LOC_WOMEN_SUMMER_DRESSES_SUBNAV}      //a[@title='Women']/ancestor::li//a[@title='Summer Dresses']

# Dresses option
${LOC_DRESSES_NAVBAR}                   //a[@title='Women']/ancestor::li/following-sibling::li/a[@title='Dresses']
${LOC_CASUAL_DRESSES_SUBNAV}            css=ul.submenu-container>li>a[title='Casual Dresses']
${LOC_EVENING_DRESSES_SUBNAV}           css=ul.submenu-container>li>a[title='Evening Dresses']
${LOC_SUMMER_DRESSES_SUBNAV}            css=ul.submenu-container>li>a[title='Summer Dresses']

# T-shirts option
${LOC_TSHIRTS_NAVBAR}                   css=div#block_top_menu>ul>li>a[title=T-shirts]
