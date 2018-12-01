% sortwithlabel.m是排序函数
function [m,n,imglab] = sortwithlabel(bw,labnum)
    [imglab,num] = bwlabel(bw,labnum);%返回一个和BW大小相同的矩阵，num返回的就是BW中连通区域的个数----9
%     figure,imshow(imglab);
    [m,n] = size(imglab); %-------------------10
    total = zeros(num+1,1);
    for i = 1 : m
        for j = 1 : n
            total(imglab(i,j)+1) = total(imglab(i,j)+1) + 1;%------11
        end
    end
    [m,n] = sort(total,'descend');
end