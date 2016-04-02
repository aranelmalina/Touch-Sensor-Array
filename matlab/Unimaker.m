function [GridMake,StartVal,EndVal] = Unimaker(on1,on2,on3,on4,on5,name1,name2,name3,name4,name5)
    if (on1==1)
        val1=name1;
    else
        val1=0;
    end
    if (on2==1)
        val2=name2;
    else
        val2=0;
    end
    if (on3==1)
        val3=name3;
    else
        val3=0;
    end
    if (on4==1)
        val4=name4;
    else
        val4=0;
    end
    if (on5==1)
        val5=name5;
    else
        val5=0;
    end
    % Main Diamond
    GridMake(11,1)=val3;
    GridMake(10:12,2)=val3;
    GridMake(8:14,3)=val3;
    GridMake(7:15,4)=val3;
    GridMake(5:17,5)=val3;
    GridMake(4:18,6)=val3;
    GridMake(2:20,7)=val3;
    GridMake(4:18,8)=val3;
    GridMake(5:17,9)=val3;
    GridMake(7:15,10)=val3;
    GridMake(8:14,11)=val3;
    GridMake(10:12,12)=val3;
    GridMake(11,13)=val3;
    % Upper Right Triangle
    GridMake(2,9)=val4;
    GridMake(2:4,10)=val4;
    GridMake(2:5,11)=val4;
    GridMake(2:7,12)=val4;
    GridMake(2:8,13)=val4;
    GridMake(2:10,14)=val4;
    %Lower Right Triangle
    GridMake(20,9)=val5;
    GridMake(18:20,10)=val5;
    GridMake(17:20,11)=val5;
    GridMake(15:20,12)=val5;
    GridMake(14:20,13)=val5;
    GridMake(12:20,14)=val5;
    % Upper Left Triangle
    GridMake(2,5)=val1;
    GridMake(2:4,4)=val1;
    GridMake(2:5,3)=val1;
    GridMake(2:7,2)=val1;
    GridMake(2:8,1)=val1;
    %Lower Right Triangle
    GridMake(20,5)=val2;
    GridMake(18:20,4)=val2;
    GridMake(17:20,3)=val2;
    GridMake(15:20,2)=val2;
    GridMake(14:20,1)=val2;
    StartVal=0;
    EndVal=0;
end
