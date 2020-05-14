function [patch] = get_patch(patch_size,x,y,image)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%this function is used to deal with the boundary of the image
%it can only deal with the square patch with clear center
%(x,y): the center of the patch.

[m,n]=size(image);
a1=x+(patch_size-1)/2;
a2=x-(patch_size-1)/2;
a3=y+(patch_size-1)/2;
a4=y-(patch_size-1)/2;

if (a2<1)
    a2=1;
end
if (a4<1)
    a4=1;
end
if (a1>m)
    a1=m;
end
if (a3>n)
    a3=n;
end
patch=image(a2:a1,a4:a3);
end


