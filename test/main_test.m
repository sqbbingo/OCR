%%下面这段代码把24位真彩色位图转为灰度图像 
filename = '7.bmp';
imfinfo(filename) % 查看图像文件信息
imgRgb = imread(filename); % 读入一幅彩色图像
imshow(imgRgb); % 显示彩色图像
imgGray = rgb2gray(imgRgb); % 转为灰度图像
figure % 打开一个新的窗口显示灰度图像
imshow(imgGray); % 显示转化后的灰度图像
imwrite(imgGray, 'gray.jpg'); % 将灰度图像保存到图像文件
%% 

