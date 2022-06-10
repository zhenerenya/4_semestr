options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);
[t,y]=ode45('rigit2',[0 25],[1 0.5 -1], options);
plot(t,y(:,1),'-',t,y(:,2),'-',t,y(:,3),'.');
legend('x_1(t)','x_2(t)', 'x_3(t)');
grid on;
xlabel('t,c');
ylabel('x_i(t)');
title('Реакция системы на входной сигнал у=sin(t) при начальных условиях [1 0.5 -1]');
