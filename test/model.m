% model.m��ģ�����ɺ���
clear all,close all,clc

loadpath = 'D:\ѧϰ����\�о���ѧϰ����\����ʵ��\��Ӣ��\�����Ӿ�\��ҵ1\�����Ӿ�\temp\';
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