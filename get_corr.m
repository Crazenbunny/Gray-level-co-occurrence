function [out] = get_corr(comatrix)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
[m,n]=size(comatrix);
sum=0;
for i=1:m
    for j=1:n
        sum=sum+comatrix(i,j);
    end
end
ui=0;
for i=1:m
    for j=1:n
        ui=ui+i*comatrix(i,j)/sum;
    end
end
uj=0;
for j=1:n
    for i=1:m
        uj=uj+j*comatrix(i,j)/sum;
    end
end
oi=0;
for i=1:m
    for j=1:n
        oi=oi+(comatrix(i,j)/sum)*(i-ui)*(i-ui);
    end
end
oj=0;
for i=1:m
    for j=1:n
        oj=oj+(comatrix(i,j)/sum)*(j-uj)*(j-uj);
    end
end
corr=0;
for i=1:m
    for j=1:n
        corr=corr+((comatrix(i,j)/sum)*(i-ui)*(j-uj))/(oi*oj);
    end
end
out=corr;
end





