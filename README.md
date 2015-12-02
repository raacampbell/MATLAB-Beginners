#Basic MATLAB coding tute: code organization
Repo for interactive talk. The idea is to clone this repo and follow along.


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
1. Look in the directory ```writingHelp.m```. Load the basicFunctionExample in there and compare it to that from the ```InputsAndOutputs.m```. Which is easier to read and understand?
2. Look at the file ```inputArgExample.m```. Does it provide a solution to ```manyArguments.m```?
3. We'll talk about the anatomy of the help section at the top and what defines a useful comment compared to a useless comment. 
4. Let's see why this matters. Take a look at ```labelEdgeSubPlots_CRAP_COMMENTS.m``` What does it do? Give up? Now take a look at ```labelEdgeSubPlotsCOMMENTS.m``` Same code. Better, yes? 


##Exercises
1. Fork the repo on Bitbucket. Add the remote to SmartGit. Check it out.
2. Look in ```exercises/makeTheseCrap/```. Choose one of the files and make crap by removing all the good things about it. 
3. Save the file. Stage. Push. Commit. 
4. Now go to Bitbucket and make a pull request to the ```scratch``` branch of my repo. 
5. Write *a nicely laid out* function that takes as input a scalar. By default it should square the scalar and display the result to screen. Optionally it should return the result to the command line. If it does the latter, nothing should be displayed to screen. Using the commands ```nargin``` and the ```varargout``` construct to achieve the task. See  ```inputArgExample.m``` in the ```writingHelp``` directory for hints. Send me the results via a pull request to my ```scratch``` branch.