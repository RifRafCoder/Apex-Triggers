[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=13088026&assignment_repo_type=AssignmentRepo)

# Developer Kickstart Week 6: Apex Triggers

Welcome to Week 6 of the Developer Kickstart curriculum at Cloud Code Academy! This week, we dive deep into the world of Apex Triggers - a fundamental aspect of Salesforce development.

## Goals of the Practice

During this week's practice project, you will gain essential knowledge about:
- Understanding what Apex Triggers are and their role in Salesforce development.
- Recognizing when to use Triggers over other automation tools.
- Writing basic triggers to perform operations before and after insert, update, delete, and undelete events.
- Handling bulk operations in Triggers to adhere to Salesforce governor limits.
- Implementing best practices in Trigger development, such as the 'One Trigger Per Object' design pattern and the use of helper classes.

Mastering Apex Triggers will equip you with the ability to automate complex business processes and validations, enhancing the power and flexibility of your Salesforce applications. This week lays the foundation for more advanced topics such as Trigger frameworks and asynchronous Apex, setting you on the path to becoming an expert Salesforce developer.

## Setup
[Beginner Setup Overview Video](https://vimeo.com/839597882/46fc06d93e)

[Intermediate Setup Overview Video](https://vimeo.com/847130413/955b8bdbe2)

To get started, you'll need a Salesforce Trailhead Playground. If you don't have one, you can create it for free from any Trailhead module.

After you've set up your Trailhead Playground:

1. Install Visual Studio Code from [here](https://code.visualstudio.com/download).
2. Install Salesforce Extension Pack in Visual Studio Code. This can be done by searching 'Salesforce Extension Pack' in the Extensions view in VS Code and clicking Install.
3. Authorize your Trailhead Playground in Visual Studio Code. Press `Ctrl + Shift + P` to open the command palette and type 'SFDX: Authorize an Org', then press Enter. Follow the steps in the browser to log in to your Playground, then return to VS Code.
4. Deploy the Apex Class by right clicking on the `VariablesDatatypesOperators` and  `VariablesDatatypesOperatorsTest` file a using the option SFDX: Deploy Source to Org.

## Running the Test Classes

To run the test classes:

1. Open the command palette with `Ctrl + Shift + P`.
2. Type 'SFDX: Invoke Apex Tests...', and press Enter.
3. In the 'Select Test Class' input, select the test class you want to run and press Enter.
4. The test results will appear in the Output panel at the bottom of the screen. You can switch to the 'Test' tab in this panel to see a summary of the test run.

## Resources

If you get stuck at any point, here are some resources that might help:

- [Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_dev_guide.htm)
- [Salesforce Stack Exchange](https://salesforce.stackexchange.com/)
- [Visual Studio Code Documentation](https://code.visualstudio.com/docs)
- [Salesforce Extensions for Visual Studio Code](https://developer.salesforce.com/tools/vscode/)

And remember, programming is often about solving problems, so don't be afraid to use search engines to find answers to your questions.

Good luck with your learning journey in Salesforce development!