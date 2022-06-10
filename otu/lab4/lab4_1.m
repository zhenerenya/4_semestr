
T1=0.7;
k1=1.6;
k=0; %ккр=7.15
T=0.1; 
B = [k*k1]; 
A = [T*T1,(T1+T),1,k*k1]; 
W=tf(B,A);

w=0.001:0.001:10%диапозон частот
GM=freqs(A, 1, w);
U=real(GM);
V=imag(GM);
plot(U,V,'b-','LineWidth',2); 
hold on
plot(0,0,'r+','LineWidth',2);
grid
hold off


