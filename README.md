# Brick-Task-2
Automate Registration and Login with [Robot Framework](https://robotframework.org) and [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)

Test Case
=========
Test case files are located in ``Tests`` directory and resource file
used by them are located in the ``Resources`` directory.
Click file names below to see the latest versions online.

Tests file:
----------
[01_auto_register.robot](./Tests/01_auto_register.robot)
   
   A test suite with a single test for valid login.

   This test has a workflow that is created using keywords in
   the imported resource file.

[02_auto_login.robot](./Tests/02_auto_login.robot)
   
   A test suite with a single test for valid login.
    
   This test has a workflow that is created using keywords in
   the imported resource file.

Resources file:
--------------
[register_res.robot](./Resources/register_res.robot) and [login_res.robot](./Resources/login_res.robot)
   
   A resource file with reusable keywords and variables.

   The system specific keywords created here form our own
   domain specific language. They utilize keywords provided
   by the imported SeleniumLibrary.
   
Generated results
=================

After running tests you will get report, output and log in HTML format. Example
files are also visible online in case you are not interested in running
the demo yourself:

- [report.html](./report.html)
- [output.xml](./output.xml)
- [log.html](./log.html)

Running Demo
============

Preconditions
-------------

A precondition for running the tests is having [Robot Framework](https://robotframework.org) and
[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) installed, and they in turn require
Python. Robot Framework [installation instructions](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) cover both
Robot and Python installations, and [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) has its own
[installation instructions](https://github.com/robotframework/SeleniumLibrary#installation).

In practice it is easiest to install Robot Framework and
[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) along with its dependencies using [pip](http://pip-installer.org/) package
manager. Once you have pip installed, all you need to do is running
these commands:

    pip install -r requirements.txt
    
Running tests
-------------

The `test cases` are located in the ``Tests`` directory. They can be
executed using the ``robot`` command::

    robot Tests

<!-- note:: If you are using Robot Framework 2.9 or earlier, you need to
          use the ``pybot`` command instead. -->

You can also run an individual test case file and use various command line
options supported by Robot Framework::

    robot Tests/01_auto_register.robot

Run ``robot --help`` for more information about the command line usage and see
[Robot Framework User Guide](http://robotframework.org/robotframework/#user-guide) for more details about test execution in general.

Using different browsers
------------------------

The browser that is used is controlled by ``${BROWSER}`` variable defined in
[register_res.robot](./Resources/register_res.robot) resource file. Chrome browser is used by default, but that
can be easily overridden from the command line::

    robot --variable BROWSER:Firefox Tests
