function result = basicFunctionExample(inputA,inputB)
% multiplies two numbers 
% 
% function output = basicFunctionExample(inputA,inputB)
%
% Purpose
% Multiply two numbers and return the result
%
%
% Inputs
% inputA - a scalar
% inputB - a scalar
%
%
% Outputs
% result - the product of inputA and inputB
%
%
% Example
% 1. basic example:
% out = inputArgExample(123,89);
%
%
% Rob Campbell - Basel 2015


%This is nice to do, but isn't critical
if nargin==0 
	help(mfilename) 
end


%It's a good idea to do checks on the input arguments to make sure that they are what they should be
if nargin<2
	error('Two input arguments needed')
end

if ~isnumeric(inputA) | ~isnumeric(inputB)
	error('Two numeric inputs needed')
end

if length(inputA) ~= 1 |  length(inputB) ~= 1
	error('Inputs should have a length of 1')
end



out = inputA * inputB;
