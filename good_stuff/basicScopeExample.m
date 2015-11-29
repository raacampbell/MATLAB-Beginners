function basicScopeExample
% demonstrates the concept of scope
% 
% function basicScopeExample
%
% Purpose
% Demonstrates the concept of scope. i.e. where a variable is visible
%
% Inputs
% none
%
%
% Outputs
% none 
%
%
% Rob Campbell - Basel 2015


clear all %this does nothing because we're in a function (not a script)

%Demonstrate that variables in sub-functions have a different scope 
myVar = 100;
fprintf('Variable "myVar" has value %d in the main function body\n', myVar)

thisSubFunction(myVar)

fprintf('Variable "myVar" still has value %d in the main function body\n', myVar)


clear myVar %this is pointless because the function's variables are cleaned up automatically when it finishes



%--------------------------------------------
function thisSubFunction(myVar)
	myVar = myVar^2;
	fprintf('Variable "myVar" has value %d in the sub-function "thisSubFunction"\n', myVar)