clc
clear all
% ������������� ��������� �������� �� ������������ ������ �������������
xdata=rand(300,1).*10;
% �� ����������� ������ �������������
% ��� (����������)
noise=randn(300,1).*20;
% ������������� �������� � ������������ � �������� ��������
ydata=2.*sin(xdata)+4.*cos(xdata)+7.*(xdata)+2.*xdata.^2+noise;
% ���������� ��������������� �������� [xdata, ydata]
plot(xdata,ydata,'b.')
% ��������� �������� ������� �� ������
hold on
% ���������� ������ ���������� ���������
% � ���������� ���������� [0 0 0 0]
x=lsqcurvefit(@myfun,[0 0 0 0],xdata,ydata);
xfit=[0:0.1:10];
yfit=myfun(x,xfit);
% ���������� ������� �����������
plot(xfit,yfit,'r-','Linewidth',3)
% ���������� �����
grid on
% �������� ���������
title('Least Square Method')
% ������� �������������� ���
xlabel('x-axis')
% ������� ������������ ���
ylabel('y-axis')
% ����������� �������
legend('Random Data','Curve fitting function')
% ������������ ���������
c1=x(1)
c2=x(2)
c3=x(3)
c4=x(4)
