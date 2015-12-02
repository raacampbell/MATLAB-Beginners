function varargout=labelEdgeSubPlots(xl,yl,onlyBottom)
% H=labelEdgeSubPlots(xl,yl,onlyBottom)    
%
%
% Inputs
% xl - what to label the x axes. 
% yl - what to label the y axes. 
% onlyBottom - optional


if nargin<3, onlyBottom=0; end    
if length(onlyBottom)==1 
    c=get(gcf,'children');
else
    c=onlyBottom;
    onlyBottom=0;
end

c=c(strmatch('axes',get(c,'type')));
for i=length(c):-1:1
    if isfield(get(c(i)),'Location')
        c(i)=[];
    end
end
pos=ones(length(c),4);
for i=1:length(c)
     pos(i,:)=get(c(i),'position');
     set(get(c(i),'xlabel'),'string','')
     set(get(c(i),'ylabel'),'string','')
end
h.xlabels=[];
for ii=1:length(c)
    if pos(ii,2)==min(pos(:,2));
        h.xlabels=[h.xlabels,get(c(ii),'xlabel')];
        set(h.xlabels(end),'string',xl)
    end
end
h.ylabels=[];
for ii=1:length(c)
    if pos(ii,1)==min(pos(:,1));
        h.ylabels=[h.ylabels,get(c(ii),'ylabel')];
        set(h.ylabels(end),'string',yl)
    end
end
if nargout==1, varargout{1}=h; end

%When using subplot, it is possible that the bottom row of plots
%won't be full. In this case it would be nice to insert x labels
%onto the penultimate row. This behaviour can be suppressed if
%onlyBottom==1
nTop    = length(find(pos(:,2)==max(pos(:,2))));
nBottom = length(find(pos(:,2)==min(pos(:,2))));
if nTop==nBottom | onlyBottom, return, end
pos(:,end+1)=c;
f=find(pos(:,2)==min(pos(:,2))); pos(f,:)=[];
f=find(pos(:,2)==min(pos(:,2))); pos=sortrows(pos(f,:),1);
pos(1:nBottom,:)=[]; 
for i=1:size(pos,1)
    h.xlabels=[h.xlabels,get(pos(i,end),'xlabel')];
    set(h.xlabels(end),'string',xl)
end


