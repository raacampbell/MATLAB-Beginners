function varargout = inputArgExample(numLines,numPoints)
% example of how to handle input arguments
% 
% function plotHandles = inputArgExample(numLines,numPoints)
%
% Purpose
% Demonstrates how to handle input arguments in a neat manner.
% The function plots a set of randomly-generated line graphs.
% 
%
% Inputs
% numLines - [optional, default is 10] the number of lines
%            of randomly-generated data to plot.
% numPoints - [optional, default is 100] the number of points 
%             per line.
%
%
% Outputs
% plotHandles - [optional] A vector of handles to the plot
% 				objects produced by the function.
%
%
% Examples
% 1. basic example:
% inputArgExample
%
% 2. 30 lines of 100 points each:
% inputArgExample(30,[]) 
% 
% 3. Use the plot handles to change the line properties
% p = inputArgExample;
% set(p,'color','r','Marker','.')
%
%
% Rob Campbell - Basel 2015



%Set the default values
if nargin<1 | isempty(numLines)
	numLines=10;
end

if nargin<2 | isempty(numPoints)
	numPoints=100;
end



%Plot each line in a different colour, so make the colours:
lineColors = jet(numLines);


%plot in a loop
clf
hold on
for ii=1:numLines
	r = rand(numPoints,1) + ii ;
	p(ii)=plot(r,'-','color',lineColors(ii,:));
end
hold off


if nargout>0
	varargout{1}=p;
end