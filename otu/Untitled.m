T=0.5;
e=0.4;
k1=2;
k2=2.5;
w1=tf(k1, [T*T 2*e*T 1]);
w2=tf(k2, [1 0]);
ltiview({'step',  'bode'},w1,'-b', w2, '--r');