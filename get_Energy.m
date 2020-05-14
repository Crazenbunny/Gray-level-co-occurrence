function [outputArg2] = get_Energy(comatrix)
[m,n]=size(comatrix);
energy=0;
sum=0;
for i=1:m
    for j=1:n
        sum=sum+comatrix(i,j);
    end
end
for i=1:m
    for j=1:n
        energy=energy+(comatrix(i,j)/sum)*(comatrix(i,j)/sum);
    end
end
outputArg2=energy;
end

