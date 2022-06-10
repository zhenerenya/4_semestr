%% ��������� �������
T1=0.7;
K1=1.6;
T=0.1;
K=1;
 
%% ��������� � �����������
B=[K*K1];
A=[T*T1, T+T1, 1, 0];

w=0.5:0.001:30;%��������� �������� ������
APK=freqs(B,A,w);
U=real(APK);%�������������� �����
V=imag(APK);%������ �����
t=0:pi/100:2*pi;
x=sin(t);
y=cos(t);
plot(U,V,'b-',x,y,'g-','LineWidth',2);
hold on;
plot(-1,0,'r+','LineWidth',2);
grid on;
axis equal
title('�������� ���� ����������� �������');
xlabel('Re');
ylabel('Im');

Wp=tf(B, A);
figure();
nyquist(Wp);
axis equal;

ltiview('bode',Wp);

