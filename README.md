# Sample Ecommerce Site UI Automation
This repo contains a personal project, showcasing UI automation for [a practice ecommerce site](http://automationpractice.com/index.php), which was created by www.seleniumframework.com.
This project aims to showcase my personal testing style, as well as my technical understanding of select technologies associated with automation testing.

## Requirements
This repo utilizes [Robot Framework](https://robotframework.org/), a keyword-based automation framework built on Python.
Specifically, Python version 3.7.5 on Ubuntu 20.04 was used in the development of tests in this repo.
Other package requirements are outlined in `requirements.txt`.

By default, tests will run in headless chrome.
Chromedriver will need to be on your system's PATH for WebDriver to function correctly.

## Installation
1. I strongly advise using a virtual environment to run these tests.
    ```
    ~/ecommerce-robot-automation$ python -m venv venv
    ```
2. Activate virtual env.
    * On *nix system:
        ```
        ~/ecommerce-robot-automation$ source venv/bin/activate
        ```
    * On Windows:
        ```
        $HOME\ecommerce-robot-automation> .\venv\Scripts\activate
        ```
3. Pip install requirements
    ```
    (venv) ~/ecommerce-robot-automation$ python -m pip install -r requirements.txt
    ```

## Running Tests
A dedicated folder `tests/results/` is included in the `.gitignore` and is intended to hold results.
For the tests to be executed, the variable `${ENV}` must be set on the command line.
In an ecosystem that has a staging environment and a production environment, this allows for Robot to import different values for the variables depending on which env you wish to run this in.

Simple test execution:
```
(venv) ~/ecommerce-robot-automation/tests$ python -m robot --outputdir results/ -v ENV:prod .
```

Test suites within this repo have also been created with parallel execution in mind.
[Pabot](https://pabot.org/) is used to achieve parallel execution.

```
(venv) ~/ecommerce-robot-automation/tests$ pabot --processes 4 --outputdir results/ -v ENV:prod .
```
Using the above, the results from pabot will be created in the directory `ecommerce-robot-automation/tests/results/pabot_results/`.
Optionally, the file `.pabotsuitenames-order` can be used to influence the order of suites while still running suites as a whole in parallel.

## Other Information
When executing tests, the variable `${BROWSER}` can be set via command line.
By default, `${BROWSER}` is set to `headlesschrome` but it has also been tested using `chrome` and `firefox`.

Installing the requirements of this repository includes the static analysis tool [Robocop](https://github.com/MarketSquare/robotframework-robocop) and the autoformatting tool [Robotidy](https://github.com/MarketSquare/robotframework-tidy).

Robocop has been minimally configured in the config file `.robocop`.
Running Robocop from the top-level directory will create a `robocop.log` file:
```
(venv) ~/ecommerce-robot-automation$ robocop
```

Robotidy runs based on the default configuration.
It can either be run on entire directories, individual files, or it can search for supported files automatically.
```
(venv) ~/ecommerce-robot-automation$ robotidy src/
```

## Test Case Management
This example project will utilize [Qase](https://qase.io/) to record test cases.
Qase has a Robot Framework library ([qase-robotframework](https://github.com/qase-tms/qase-python/tree/master/qase-robotframework)) which can be used as a listener to automatically update a test run on Qase.io.
To utilize the functionality, tests should be run from the `tests` folder so that the listener can read configurations from the `tox.ini` file:
```
(venv) ~/ecommerce-robot-automation/tests$ python -m robot --outputdir results/ -v env:prod --listener qaseio.robotframework.Listener .
```

Doing so will automatically create a test run in Qase and post the results.

> NOTE: `tox.ini` has been added to the `.gitignore` as it includes an api token.
> Please contact me and I can provide the required `tox.ini` file used to automatically update runs in Qase.

This would be the most common situation, where control of which tests to include in a Qase run is done via Robot tags.
If one wishes to update an existing run in Qase, that would be done by one of two methods:

  1. In the `tox.ini` file, add the configuration `qase_run_id=<run id>`.
  2. Include the environment variable `QASE_RUN_ID` when executing the tests.
  The syntax for choosing this option will be different between Linux and Windows.

### TODO
I want to look into creating a second account on Qase and give it read access to the `ecommerce-robot-automation` project I created on Qase.
This will show off the automatic updating capabilities.
Note that the test cases written in Qase do not include steps; this is due to how the Qase library for Robot functions.
Unless the steps in Qase match exactly with the keywords in Robot, multiple warnings are thrown to stdout during Robot execution.
If no steps are in the Qase case, then no warnings are thrown.
For purposes of this example project, I've elected to forgo Qase steps in favor of clear Robot keywords.
