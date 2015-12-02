function varargout = inputArgExample(numLines,numPoints)
if nargin<1 | isempty(numLines)
	numLines=10;
end
if nargin<2 | isempty(numPoints)
	numPoints=100;
end
lineColors = jet(numLines);
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