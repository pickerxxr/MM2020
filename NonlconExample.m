function [G, Ceq] = NonlconExample(x)
% --------------------------------------------
% x为所选用的自变量值
% 该函数计算fmincon中的线性或非线性限定值
% --------------------------------------------
    G = -x;
    Ceq = [x(1) + x(4) + x(7), x(2) + x(5) + x(8), x(3) + x(6) + x(9)] - [1500, 1500, 1500];
end