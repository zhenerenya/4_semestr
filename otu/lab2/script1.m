clc;
clear variables;
close all force;

k=2;
T=0.5;
x_i=0.4;


%% усиление
W1 = tf(k, 1);
ltiview({'step', 'impulse', 'bode', 'nyquist'}, W1, 'b-');


%% интегратор 
W2 = tf(k, [1 0]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W2,'-b');

%% апериодическое 1 порядка 
 
W3 = tf(k, [T 1]);

ltiview({'step', 'impulse', 'bode', 'nyquist'},W3,'-b');

%% реальное дифференцируещее 1-го порядка
W4=tf([k 0], [T 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W4,'-b');

%% колебательное с исходным  значением К 
W5=tf(k, [T^2 2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W5,'-b');

%% колебательное с значением К*2
W6=tf(2*k, [T^2 2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W6,'-b', W5, '-r');

%% колебательное с значением T*2
W7=tf(k, [(2*T)^2 2*2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W7,'-b', W5, '-r');

%% колебательное с уменьшением коэффициента демпфирования вдвое 
W8=tf(k, [T^2 0.5*2*T*x_i 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W8,'-b', W5, '-r');

%% консервативное звено 
W9=tf(k, [T^2 0 1]);
ltiview({'step', 'impulse', 'bode', 'nyquist'},W9,'-b', W5, '-r');



