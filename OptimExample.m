%% ��������
% --------------------------------------------
% �����Ʒ������Ż���ֵ
% �Ż���ͽ�ֵ�洢�ڱ��� x �� val ��
% ����Ϊ����
% --------------------------------------------
clear all;
clc;

%% ����������
f = @(x, price) -sum(x.*price);

%% ������ֵ
price = [5; 4; 7; 16; 8; 9; 12; 10; 11];
allocate_matrix = zeros(9, 1);
allocate_matrix(1) = 1000;
allocate_matrix(5) = 1500;
allocate_matrix(9) = 1500;
allocate_matrix(7) = 500;
A = [1     1     1     0     0     0     0     0     0
     0     0     0     1     1     1     0     0     0
     0     0     0     0     0     0     1     1     1];
b = [1000; 1500; 2000];

%% ��������������µķ������Ż���
[x val] = fmincon(@(x) f(x, price), allocate_matrix, A, b, [], [], zeros(9, 1), [], @NonlconExample)