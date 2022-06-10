T=[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]; 
k_cr=[7.15,4.03,2.98,2.45,2.15,1.94,1.79,1.67,1.59,1.52,1.31,1.21,1.15,1.11,1.07,1.05,1.03,1.02]; 
figure();
plot(T, k_cr,'b-','LineWidth',2);
axis equal;
grid on;
title('Граница устойчивости системы');
xlabel('T');
ylabel('k_{kp}');
hold on;
plot(0.7, 0.1, 'color', 'black', 'marker', '*', 'markersize', 16);
plot(1.7, 3.0, 'color', 'red', 'marker', '*', 'markersize', 16);
plot(1.5,1.31, 'color', 'green', 'marker', '*', 'markersize', 16);
legend('Граница области устойчивости', ...
'Точка уст.' ,...
'Точка неуст.','Точка нейтр.');

k1=1.6;
T1=0.7;
%% a1
Ta1=0.7;
ka1=0.1;
W1=tf([ka1*k1],[Ta1*T1,Ta1+T1,1,ka1*k1]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W1);

%% a2
Ta2=1.7;
ka2=3.0;
W2=tf([ka2*k1],[Ta2*T1,Ta2+T1,1,ka2*k1]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W2);

%% a3
Ta3=1.5;
ka3=1.31;
W3=tf([ka3*k1],[Ta3*T1,Ta3+T1,1,ka3*k1]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W3);