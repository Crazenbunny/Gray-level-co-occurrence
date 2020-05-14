function [output] = GLCM(patch,grade)
[m,n]=size(patch);
comatrix=zeros(grade,grade);
for i=1:m
    for j=1:n
        pair_x=patch(i,j);
        if (i-1>=1)
            pair_y=patch(i-1,j);
            comatrix(pair_x,pair_y)=comatrix(pair_x,pair_y)+1;
        end
        if (i-1>=1)&&(j-1>=1)
            pair_y=patch(i-1,j-1);
            comatrix(pair_x,pair_y)=comatrix(pair_x,pair_y)+1;
        end
        if (j+1<=n)
            pair_y=patch(i,j+1);
            comatrix(pair_x,pair_y)=comatrix(pair_x,pair_y)+1;
        end
         if (i-1>=1)&&(j+1<=n)
            pair_y=patch(i-1,j+1);
            comatrix(pair_x,pair_y)=comatrix(pair_x,pair_y)+1;
        end
        
        
    end
    
end
output=comatrix;
end

