# scommandCI

This script can be used to run the test without using the GUI of cloudtest soasta , it will be helpful to run tests in CI .The trackproperty can be used to get input for number of Vugen test below is the reference link that can be used to be able to use it.

https://learn.akamai.com/en-us/webhelp/cloudtest/cloudtest/GUID-6BAB6A54-1221-4221-BB48-C795930EA3F1.html


for using it download scommand utility from Akamai CLOUDTEST soasta , it is only useful if you have licenced CLOUDTEST tool at your exposure.

The order of parameteris username/password/compositionpath/stoptimeinmins/resultname

Need help on extracting dashboard URL from the running test which can be sent as email to stakeholders

It is just a basic flow and it can be modified and used  , Everyone is welcome to make it more useful and robust all suggesstions are welcome.

The deleteResults can be encorporated as a jenkins job to make sure if you are using a internal hosted instance , it remains clean , by sceduling job to keep deleting results. eg- Everyresult that gets older than 200 days ...
