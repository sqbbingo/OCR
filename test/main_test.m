%%������δ����24λ���ɫλͼתΪ�Ҷ�ͼ�� 
filename = '7.bmp';
imfinfo(filename) % �鿴ͼ���ļ���Ϣ
imgRgb = imread(filename); % ����һ����ɫͼ��
imshow(imgRgb); % ��ʾ��ɫͼ��
imgGray = rgb2gray(imgRgb); % תΪ�Ҷ�ͼ��
figure % ��һ���µĴ�����ʾ�Ҷ�ͼ��
imshow(imgGray); % ��ʾת����ĻҶ�ͼ��
imwrite(imgGray, 'gray.jpg'); % ���Ҷ�ͼ�񱣴浽ͼ���ļ�
%% 

