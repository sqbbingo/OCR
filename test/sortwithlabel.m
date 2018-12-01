% sortwithlabel.m��������
function [m,n,imglab] = sortwithlabel(bw,labnum)
    [imglab,num] = bwlabel(bw,labnum);%����һ����BW��С��ͬ�ľ���num���صľ���BW����ͨ����ĸ���----9
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