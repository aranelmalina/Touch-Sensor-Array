clc
clear all
close all

load('ELE_place.mat');
load('electrodedata.mat')
% VarCell={VarName1,VarName2,VarName3,VarName4,VarName5,VarName6,VarName7,VarName8,VarName9,VarName10,VarName11,VarName12};
% save('electrodedata.mat','VarCell')
for i=1:length(VarCell{1})
    for j=1:12
        for k=1:length(ELE{j,1})
            CompleteGrid(ELE{j,1}(k),ELE{j,2}(k))=VarCell{j}(i);
        end
    end
   
    contourf(CompleteGrid,10)
    set(gca,'YDir','reverse')
    axis equal
    drawnow
    pause(0.05)
end
close(figure(1))