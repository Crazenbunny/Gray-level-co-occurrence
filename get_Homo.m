function [h] = get_Homo(comatrix)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
sum=0;
homo=0;
[m,n]=size(comatrix);
for i=1:m
    for j=1:n
        sum=sum+comatrix(i,j);
    end
end
for i=1:m
    for j=1:n
        homo=homo+((comatrix(i,j)/sum)/(1+abs(i-j)));
    end
end
h=homo;
end

