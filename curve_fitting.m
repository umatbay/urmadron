clc
clear all
% генерирование случайных значений по равномерному закону распределения
xdata=rand(300,1).*10;
% по нормальному закону распределения
% шум (отклонения)
noise=randn(300,1).*20;
% генерирование значений в соответствии с заданной функцией
ydata=2.*sin(xdata)+4.*cos(xdata)+7.*(xdata)+2.*xdata.^2+noise;
% построение сгенерированных значений [xdata, ydata]
plot(xdata,ydata,'b.')
% заморозка текущего графика на фигуре
hold on
% применение метода наименьших квадратов
% с начальными значениями [0 0 0 0]
x=lsqcurvefit(@myfun,[0 0 0 0],xdata,ydata);
xfit=[0:0.1:10];
yfit=myfun(x,xfit);
% построение функции приближения
plot(xfit,yfit,'r-','Linewidth',3)
% построение сетки
grid on
% название заголовка
title('Least Square Method')
% подпись горизонтальной оси
xlabel('x-axis')
% подпись вертикальной оси
ylabel('y-axis')
% обозначение легенды
legend('Random Data','Curve fitting function')
% приближенные константы
c1=x(1)
c2=x(2)
c3=x(3)
c4=x(4)
