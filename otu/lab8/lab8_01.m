k=1;
T=0.5;
T1=1.2;
W0=tf([k],[T*T1,T+T1,1,0]);
sisotool(W0);