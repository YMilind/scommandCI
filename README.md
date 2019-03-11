# scommandCI

This script can be used to run the test without using the GUI of cloudtest soasta , it will be helpful to run tests in CI .

for using it download scommand utility from Akamai CLOUDTEST soasta , it is only useful if you have licenced CLOUDTEST tool at your exposure.

The order of parameteris username/password/compositionpath/stoptimeinmins/resultname

Need help on extracting dashboard URL from the running test which can be sent as email to stakeholders

It is just a basic flow and it can be modified and used  , Everyone is welcome to make it more useful and robust all suggesstions are welcome.

The deleteResults can be encorporated as a jenkins job to make sure if you are using a internal hosted instance , it remains clean , by sceduling job to keep deleting results. eg- Everyresult that gets older than 200 days ...
