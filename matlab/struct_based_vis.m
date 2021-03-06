%% Julia Johnson
% jaj118
clear all
close all
clc

% save('electrodedata.mat','VarName1','VarName2','VarName3','VarName4','VarName5','VarName6','VarName7','VarName8','VarName9','VarName10','VarName11','VarName12');
load('electrodedata.mat');
%% Setup
CompleteGrid=zeros(61,61);
%% Unit A -empty on left border and top border
%Corners
%First unit of row
C1=[1 1]; %(1,1) (row,column)
C2=[1 14]; %(1,14)
C3=[20 1]; %(20,1)
C4=[20 14]; %(20,14)

% %Show corners
% MapGrid=zeros(61,61);
% MapGrid(1,1)=10;
% MapGrid(1,14)=10;
% MapGrid(20,1)=10;
% MapGrid(20,14)=10;
% Hmobj2=HeatMap(MapGrid);

Data.A1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A1.ImageGrid,Data.A1.StartVal,Data.A1.EndVal] = Unimaker(0,0,1,0,1,0,0,2,0,3);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A1.ImageGrid(1:20,1:14);
%%
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

% Show corners
% MapGrid=zeros(61,61);
% MapGrid(C1(1),C1(2))=10;
% MapGrid(C2(1),C2(2))=10;
% MapGrid(C3(1),C3(2))=10;
% MapGrid(C4(1),C4(2))=10;
% Hmobj2=HeatMap(MapGrid);
% 
Data.B1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
%% Unit B
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B1.ImageGrid,Data.B1.StartVal,Data.B1.EndVal] = Unimaker(0,1,1,0,1,0,3,4,0,5);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B1.ImageGrid(1:20,1:14);
%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

% Show corners
% MapGrid=zeros(61,61);
% MapGrid(C1(1),C1(2))=10;
% MapGrid(C2(1),C2(2))=10;
% MapGrid(C3(1),C3(2))=10;
% MapGrid(C4(1),C4(2))=10;
% Hmobj2=HeatMap(MapGrid);

Data.C1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C1.ImageGrid,Data.C1.StartVal,Data.C1.EndVal] = Unimaker(0,1,1,0,1,0,5,6,0,7);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C1.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

% Show corners
% MapGrid=zeros(61,61);
% MapGrid(C1(1),C1(2))=10;
% MapGrid(C2(1),C2(2))=10;
% MapGrid(C3(1),C3(2))=10;
% MapGrid(C4(1),C4(2))=10;
% Hmobj2=HeatMap(MapGrid);

Data.D1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D1.ImageGrid,Data.D1.StartVal,Data.D1.EndVal] = Unimaker(0,1,1,0,1,0,7,8,0,9);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D1.ImageGrid(1:20,1:14);
disp('Row 1 Transfer Complete');

%% Unit A2
%Corners
%First unit of row
C1=[21 1];
C2=[21 14]; 
C3=[40 1]; 
C4=[40 14];

Data.A2=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A2.ImageGrid,Data.A2.StartVal,Data.A2.EndVal] = Unimaker(0,0,1,1,1,0,0,10,3,11);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A2.ImageGrid(1:20,1:14);

%%
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];
 
Data.B2=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
%% Unit B
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B2.ImageGrid,Data.B2.StartVal,Data.B2.EndVal] = Unimaker(1,1,1,1,1,3,11,12,5,13);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B2.ImageGrid(1:20,1:14);

%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.C2=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C2.ImageGrid,Data.C2.StartVal,Data.C2.EndVal] = Unimaker(1,1,1,1,1,5,13,14,7,15);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C2.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.D2=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D2.ImageGrid,Data.D2.StartVal,Data.D2.EndVal] = Unimaker(1,1,1,1,1,7,15,16,9,17);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D2.ImageGrid(1:20,1:14);

disp('Row 2 Transfer Complete');
%% Unit A3
%Corners
%First unit of row
C1=[41 1];
C2=[41 14]; 
C3=[60 1]; 
C4=[60 14];

Data.A3=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A3.ImageGrid,Data.A3.StartVal,Data.A3.EndVal] = Unimaker(0,0,1,1,1,0,0,18,11,19);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A3.ImageGrid(1:20,1:14);

%% Unit B
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];
 
Data.B3=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));

% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B3.ImageGrid,Data.B3.StartVal,Data.B3.EndVal] = Unimaker(1,1,1,1,1,11,19,20,13,21);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B3.ImageGrid(1:20,1:14);

%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.C3=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C3.ImageGrid,Data.C3.StartVal,Data.C3.EndVal] = Unimaker(1,1,1,1,1,13,21,22,15,23);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C3.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.D3=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D3.ImageGrid,Data.D3.StartVal,Data.D3.EndVal] = Unimaker(1,1,1,1,1,15,23,24,17,25);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D3.ImageGrid(1:20,1:14);
disp('Row 3 Transfer Complete');
%% Unit A4
%Corners
%First unit of row
C1=[61 1];
C2=[61 14]; 
C3=[80 1]; 
C4=[80 14];

Data.A4=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A4.ImageGrid,Data.A4.StartVal,Data.A4.EndVal] = Unimaker(0,1,0,1,1,0,27,0,19,28);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A4.ImageGrid(1:20,1:14);

%% Unit B

xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];
 
Data.B4=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B4.ImageGrid,Data.B4.StartVal,Data.B4.EndVal] = Unimaker(1,1,1,1,1,19,29,28,21,30);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B4.ImageGrid(1:20,1:14);

%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.C4=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C4.ImageGrid,Data.C4.StartVal,Data.C4.EndVal] = Unimaker(1,1,1,1,1,21,31,30,23,32);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C4.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.D4=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D4.ImageGrid,Data.D4.StartVal,Data.D4.EndVal] = Unimaker(1,1,1,1,1,23,33,32,25,34);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D4.ImageGrid(1:20,1:14);
disp('Row 4 Transfer Complete');
%% Unit A5
%Corners
%First unit of row
C1=[81 1];
C2=[81 14]; 
C3=[100 1]; 
C4=[100 14];

Data.A5=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A5.ImageGrid,Data.A5.StartVal,Data.A5.EndVal] = Unimaker(0,0,1,1,1,0,0,35,28,26);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A5.ImageGrid(1:20,1:14);

%% Unit B

xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];
 
Data.B5=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B5.ImageGrid,Data.B5.StartVal,Data.B5.EndVal] = Unimaker(1,1,1,1,1,28,36,37,30,38);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B5.ImageGrid(1:20,1:14);

%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.C5=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C5.ImageGrid,Data.C5.StartVal,Data.C5.EndVal] = Unimaker(1,1,1,1,1,30,38,39,32,40);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C5.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.D5=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D5.ImageGrid,Data.D5.StartVal,Data.D5.EndVal] = Unimaker(1,1,1,1,1,32,40,41,34,42);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D5.ImageGrid(1:20,1:14);
disp('Row 5 Transfer Complete');

%% Unit A6
%Corners
%First unit of row
C1=[101 1];
C2=[101 14]; 
C3=[120 1]; 
C4=[120 14];

Data.A6=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A6.ImageGrid,Data.A6.StartVal,Data.A6.EndVal] = Unimaker(0,0,1,1,1,0,0,43,36,44);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A6.ImageGrid(1:20,1:14);

%% Unit B

xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];
 
Data.B6=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B6.ImageGrid,Data.B6.StartVal,Data.B6.EndVal] = Unimaker(1,0,1,1,0,36,44,45,38,46);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.B6.ImageGrid(1:20,1:14);

%% Unit C
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.C6=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.C6.ImageGrid,Data.C6.StartVal,Data.C6.EndVal] = Unimaker(1,0,1,1,0,38,46,47,40,48);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.C6.ImageGrid(1:20,1:14);

%% Unit D
xshift=14;
yshift=0;
C1=[C1(1)+yshift C1(2)+xshift];
C2=[C2(1)+yshift C2(2)+xshift];
C3=[C3(1)+yshift C3(2)+xshift];
C4=[C4(1)+yshift C4(2)+xshift];

Data.D6=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.D6.ImageGrid,Data.D6.StartVal,Data.D6.EndVal] = Unimaker(1,0,1,1,0,40,48,49,42,50);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.D6.ImageGrid(1:20,1:14);
disp('Row 6 Transfer Complete');
heatmap=HeatMap(CompleteGrid);
%% Remove gaps
CompleteGrid(21,9:19)=3;
CompleteGrid(41,9:19)=11;
CompleteGrid(61,9:19)=19;
CompleteGrid(21,23:33)=5;
CompleteGrid(41,23:33)=13;
CompleteGrid(61,23:33)=21;
%% Finder
%ELE8
ELE{48,2}=[];
%index is electrode number + 1
%row 1
[ELE{9,1},ELE{9,2}]=find(CompleteGrid==2); %value doesn't matter just need index
[ELE{7,1},ELE{7,2}]=find(CompleteGrid==10); 
[ELE{3,1},ELE{3,2}]=find(CompleteGrid==18); 
%row 2
[ELE{10,1},ELE{10,2}]=find(CompleteGrid==3); %value doesn't matter just need index
[ELE{5,1},ELE{5,2}]=find(CompleteGrid==11); 
[ELE{1,1},ELE{1,2}]=find(CompleteGrid==19); 
%row 3
[ELE{11,1},ELE{11,2}]=find(CompleteGrid==4); %value doesn't matter just need index
[ELE{8,1},ELE{8,2}]=find(CompleteGrid==12); 
[ELE{4,1},ELE{4,2}]=find(CompleteGrid==20); 
%row 4
[ELE{12,1},ELE{12,2}]=find(CompleteGrid==5); %value doesn't matter just need index
[ELE{6,1},ELE{6,2}]=find(CompleteGrid==13); 
[ELE{2,1},ELE{2,2}]=find(CompleteGrid==21); 

disp('Location Transfer Complete');
save('ELE_place.mat','ELE');
% save all of this data