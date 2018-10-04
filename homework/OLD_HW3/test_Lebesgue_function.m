function [L1,L2,L3,L4] = test_Lebesgue_function()
s = linspace(-1,1,8);
[L,L1] = lebesgue(s);
hold off, plot(L), grid on, hold on, plot(s,L(s),'.')
title('evenly-spaced with N = 8')
disp(L1)

s = linspace(-1,1,20);
[L,L2] = lebesgue(s);
hold off, plot(L), grid on, hold on, plot(s,L(s),'.')
title('evenly-spaced with N = 20')
disp(L2)


npts = 8;
s = chebpts(npts); [L,L3] = lebesgue(s);
hold off, plot(L), grid on, hold on, plot(s,L(s),'.')
title('unevenly-spaced with N = 8')
disp(L3)

npts = 20;
s = chebpts(npts); [L,L4] = lebesgue(s);
hold off, plot(L), grid on, hold on, plot(s,L(s),'.')
title('unevenly-spaced with N = 20')
disp(L4)