clc;
clear variables;
close all force;

k=2;
T=0.5;
x_i=0.4;


%% ��������
W1 = tf(k, 1);
ltiview({'step', 'impulse', 'bode', 'nyquist'}, W1, 'b-');


%% ���������� 
W2 = tf(k, [1 0]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W2,'-b');

%% �������������� 1 ������� 
 
W3 = tf(k, [T 1]);

ltiview({'step', 'impulse', 'bode', 'nyquist'},W3,'-b');

%% �������� ���������������� 1-�� �������
W4=tf([k 0], [T 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W4,'-b');

%% ������������� � ��������  ��������� � 
W5=tf(k, [T^2 2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W5,'-b');

%% ������������� � ��������� �*2
W6=tf(2*k, [T^2 2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W6,'-b', W5, '-r');

%% ������������� � ��������� T*2
W7=tf(k, [(2*T)^2 2*2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W7,'-b', W5, '-r');

%% ������������� � ����������� ������������ ������������� ����� 
W8=tf(k, [T^2 0.5*2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W8,'-b', W5, '-r');

%% �������������� ����� 
W9=tf(k, [T^2 0 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W9,'-b', W5, '-r');



