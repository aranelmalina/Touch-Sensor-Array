%% Julia Johnson
% jaj118
clear all
close all
clc

%% Setup
CompleteGrid=zeros(61,61);
%% Unit A -empty on left border and top border
%Corners
C1=[1 1]; %(1,1) (row,column)
C2=[1 14]; %(1,14)
C3=[20 1]; %(20,1)
C4=[20 14]; %(20,14)

%Show corners
MapGrid=zeros(61,61);
MapGrid(1,1)=10;
MapGrid(1,14)=10;
MapGrid(20,1)=10;
MapGrid(20,14)=10;

Data.A1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.A1.ImageGrid,Data.A1.StartVal,Data.A1.EndVal] = Unimaker(0,1,1,0,1,1);
CompleteGrid(C1(1):C3(1),C1(2):C2(2))=Data.A1.ImageGrid(1:20,1:14);
disp('TransferA1Complete');
Hmobj=HeatMap(CompleteGrid);
Hmobj2=HeatMap(MapGrid);
%%
C1=[1 15];
C2=[1 28];
C3=[20 15];
C4=[20 28];

Data.B1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
%% Unit B
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[Data.B1.ImageGrid,Data.B1.StartVal,Data.B1.EndVal] = Unimaker(0,1,1,0,1,Data.A1.EndVal);
CompleteGrid(1:20,15:28)=Data.B1.ImageGrid(1:20,1:14);
disp('TransferB1Complete');
%% Unit C
xshift=14;
yshift=0;
C1.r=1;
C1.c=1+xshift*2;
C2.r=1;
C2.c=xshift*3;
C3.r=20+yshift;
C3.c=1+xshift*2;
C4.r=20+yshift;
C4.c=xshift*3;
Data.C1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[GridOutput,StartVal,EndVal] = Unimaker(0,1,1,0,1,Data.B1.EndVal);
Data.C1.ImageGrid=GridOutput;
Data.C1.StartVal=StartVal;
Data.C1.EndVal=EndVal;
CompleteGrid(1:20,29:42)=Data.C1.ImageGrid(1:20,1:14);
disp('TransferC1Complete');

%% Unit D
xshift=14;
yshift=0;
C1.r=1;
C1.c=1+xshift*3; %43
C2.r=1;
C2.c=xshift*4; %56
C3.r=20+yshift;
C3.c=1+xshift*3;
C4.r=20+yshift;
C4.c=xshift*4;
Data.D1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[GridOutput,StartVal,EndVal] = Unimaker(0,1,1,0,1,Data.C1.EndVal);
Data.D1.ImageGrid=GridOutput;
Data.D1.StartVal=StartVal;
Data.D1.EndVal=EndVal;
CompleteGrid(1:20,43:56)=Data.D1.ImageGrid(1:20,1:14);
disp('TransferD1Complete');

%% Unit E
xshift=0;
yshift=21;
C1.r=1;
C1.c=1+xshift*3; %43
C2.r=1;
C2.c=xshift*4; %56
C3.r=20+yshift;
C3.c=1+xshift*3;
C4.r=20+yshift;
C4.c=xshift*4;
Data.D1=struct('Corner1',C1,'Corner2',C2,'Corner3',C3,'Corner4',C4,'EmptyGrid',zeros(20,14),'ImageGrid',zeros(20,14));
% [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,StartVal)
[GridOutput,StartVal,EndVal] = Unimaker(1,1,1,1,1,Data.D1.EndVal);
Data.D1.ImageGrid=GridOutput;
Data.D1.StartVal=StartVal;
Data.D1.EndVal=EndVal;
CompleteGrid(21:41,1:14)=Data.D1.ImageGrid(1:20,1:14);
disp('TransferD1Complete');


%%
Hmobj=HeatMap(CompleteGrid);
plot(Hmobj);