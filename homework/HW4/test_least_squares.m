function [x,p1,p2,p4,p8] = test_least_squares()

a = importdata('AMD_data_2013_2018.dat');

% data = AMD_data_2013_2018.dat;

xx = linspace(0,1,1000);
x = a.data(:,1);
y = a.data(:,2)';

[a1,err1] = poly_least_squares(x,y,1);
[a2,err2] = poly_least_squares(x,y,2);
[a4,err4] = poly_least_squares(x,y,4);
[a8,err8] = poly_least_squares(x,y,8);

flip(a1)
p1=polyval(flip(a1),xx);
p2=polyval(flip(a2),xx);
p4=polyval(flip(a4),xx);
p8=polyval(flip(a8),xx);


figure(1)
plot(x,y,'b');
hold on
plot(xx,p1,'r');
hold on
plot(xx,p2,'r');
hold on
plot(xx,p4,'r');
hold on
plot(xx,p8,'r');


% M1 = 1;
% [a1,err1] = poly_least_squares(x,y,M1);
% figure;
% plot(x,y,'b')
% hold on
% plot(x,a1,'r-')
% xlable('x');ylable('y')
% title('M=1')
% 
% M2 = 2;
% [a2,err2] = poly_least_squares(x,y,M2);
% figure;
% plot(x,y,'b')
% hold on
% plot(x,a2,'r-')
% xlable('x');ylable('y')
% title('M=2')
% 
% M3 = 4;
% [a3,err3] = poly_least_squares(x,y,M3);
% figure;
% plot(x,y,'b')
% hold on
% plot(x,a3,'r-')
% xlable('x');ylable('y')
% title('M=4')
% 
% M4 = 8;
% [a4,err1] = poly_least_squares(x,y,M4);
% figure;
% plot(x,y,'b')
% hold on
% plot(x,a4,'r-')
% xlable('x');ylable('y')
% title('M=8')