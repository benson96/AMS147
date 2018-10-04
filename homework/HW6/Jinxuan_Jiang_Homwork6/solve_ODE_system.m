function [y,t] = solve_ODE_system()
NSTEPS = 1000000;
IOSTEP = 50;
DT= 1e-3;
y0 = [1;2;3];
T = NSTEPS*DT;

fun = @(y,t) [-y(1)+y(2)*y(3); -y(2)+(y(3)-2)*y(1); 1-y(1)*y(2)];

[y,t] = AB3(fun,y0,T,DT,IOSTEP);

figure(1)
plot(t,y(1,:),'b')
hold
plot(t,y(2,:),'r')
hold
plot(t,y(3,:),'b')

figure(2);
plot3(y(1,:), y(2,:),y(3,:))

end