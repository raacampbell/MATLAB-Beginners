#Basic MATLAB coding tute: code organization



##Adding your functions to the MATLAB path
We will cover the functions ```pathtool```, ```addpath```, ```rmpath```. See the organisingYourPath directory in this repository for an example of how to customise your MATLAB startup.


##Getting help 
You can get help in MATLAB using the ```help``` and ```doc``` commands. You can find files related a keyword using ```lookfor```, which is based around the idea 
of the ```H1 line```. You can get help on-line at The MathWorks newsgroup and the file exchange.


## Variable scope
Variables exist only within a certain domain. 
1. How does the workspace relate to scripts and functions? Look in scopeAndMFiles and at the files ```thisIsAFunction.m``` and ```thisIsAScript.m````. What 
is the difference between these two?
2. Now we will run ```basicScopeExample.m``` and see how the value of the local variable ```myVar``` changes through the function. 
3. So what is scope good for?
4. Basic function input arguments: compare ```evalinExample.m``` and  ```inputArgsExample.m```


## Inputs and outputs
Functions generally have some sort of input and some sort of ouput. The most obvious would be input and output variables, but there could be 
other sorts of inputs and outputs. e.g.

1. Reading or writing to a file. Text file, MAT file, etc. 
2. Reading from a URL.
3. Output to screen or as a figure. 

However you do it, it's crucial that your function's input and outputs are well thought out and do anything unexpected. Code for this section is in ```InputsAndOutputs```
1. Take a look at ```basicFunctionExample``` and run it. This is more or less the most simple thing you can do. 
2. Take a look at ```never_do_this.m```. Why should you never do that?
3. Take a look at ```manyArguments.m``` How does it make you feel? Is what you're seeing good or bad practice?


## Writing good help and documentation for your functions. General layout of a MATLAB script.
