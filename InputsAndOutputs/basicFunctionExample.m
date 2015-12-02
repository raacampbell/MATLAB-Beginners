function result = basicFunctionExample(inputA,inputB)
if nargin<2
	error('Two input arguments needed')
end
if ~isnumeric(inputA) | ~isnumeric(inputB)
	error('Two numeric inputs needed')
end
if length(inputA) ~= 1 |  length(inputB) ~= 1
	error('Inputs should have a length of 1')
end
result = inputA * inputB;
