# Brick-Task-2
Web Testing with Robot Framework and SeleniumLibrary

Test Case
=========

Test case files are located in ``Tests`` directory and resource file used by them are located in
the ``Resources`` directory.Click file names below to see the latest versions
online.

Tests file:
`01_auto_register.robot`_
    A test suite with a single test for valid register.

    This test has a workflow that is created using keywords in
    the imported Resources directory.
    
`02_auto_login.robot`_
    A test suite with a single test for valid login.

    This test has a workflow that is created using keywords in
    the imported Resources directory.

Resources file:
 `login_res.robot` & `register_res.robot`_
    A resource file with reusable keywords and variables.

    The system specific keywords created here form our own
    domain specific language. They utilize keywords provided
    by the imported SeleniumLibrary_.
