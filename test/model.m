% model.m是模板生成函数
clear all,close all,clc

loadpath = 'D:\学习资料\研究生学习资料\课设实验\骆英浩\机器视觉\作业1\机器视觉\temp\';
path = strcat(loadpath,'*.bmp');
path = dir(loadpath);
num = length(path);
for i = 3 : num
    name = path(i).name;
    imgname = [loadpath name];
    f = imread(imgname);
    f = imresize(f,[25 10]);
    temp{i-2} = f;
end