%%下面这段代码把24位真彩色位图转为灰度图像 
filename = '6.bmp';
imfinfo(filename) % 查看图像文件信息
imgRgb = imread(filename); % 读入一幅彩色图像------------------------------1
% imshow(imgRgb); % 显示彩色图像
imgGray = rgb2gray(imgRgb); % 转为灰度图像---------------------------------2
% figure % 打开一个新的窗口显示灰度图像
% imshow(imgGray); % 显示转化后的灰度图像
imwrite(imgGray, 'gray.jpg'); % 将灰度图像保存到图像文件--------------------3
%% 滤波
h = fspecial('gaussian', [11,11], 7);%建立预定义的滤波算子，创建一个滤波器
filteredRGB = imfilter(imgGray, h,'replicate');%对任意类型数组或多维图像进行滤波-----4
% figure, imshow(filteredRGB)
eq = histeq(filteredRGB, 256);%指定直方图均衡后的灰度级数为256--------------5
% figure,imhist(eq);%提取图像中的直方图信息
% figure,imshow(eq),title('histeq');%显示图像
eqmed = medfilt2(eq,[3,3]);%消除图像噪声之中值滤波器------------------------6
% figure,imshow(eqmed),title('medfilter');
bw = im2bw(eqmed,graythresh(eqmed));%把灰度图像转换成二值图像---------------7
% figure,imshow(bw),title('bw');
%% 粗定位
[m,n,imglab] = sortwithlabel(bw,4);%----------------------------------------8-11
[mm,nn] = size(n);
for i = 1 : mm
    if n(i)~=1
        maxx = n(i) -1;
        break;
    end
end
fcrop = fcropwithsqure(imglab, maxx);%根据面积切割
figure,imshow(fcrop);
