function [ELE_nr,ELE_cr]=multifind(array,value1,value2,value3,value4)
    [row1,col1]=find(array==value1);
    [row2,col2]=find(array==value2);
    [row3,col3]=find(array==value3);
    [row4,col4]=find(array==value4);
    ELE_nr=vertcat(row1,row2,row3,row4);
    ELE_cr=vertcat(col1,col2,col3,col4);
end