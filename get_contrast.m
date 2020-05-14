function [outputArg1] = get_contrast(comatrix)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
[m,n]=size(comatrix);
sum=0;
con=0;
for i=1:m
    for j=1:n
        sum=sum+comatrix(i,j);
    end
end
for i=1:m
    for j=1:n
        con=con+(i-j)*(i-j)*comatrix(i,j)/sum;
    end
end
outputArg1=con;
end

