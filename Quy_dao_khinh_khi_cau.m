function Quy_dao_khinh_khi_cau
clc
close all
clear all
%% INPUT DATA
T=0;
x = 0;A=0;
y = 0;B=0.8;
v0 = input('Nhập vận tốc bay lên v0(m/s)=');
a  = input('Nhập hệ số a=');
t = input('Nhập thời gian bay t(s)=');
n=0;%số đếm
dt = linspace(0,t,1000);
%% LIMIT
X=((a*v0*t^2)/2)+10;
Y=(v0*t)+5;
%% FIGURE
xlabel('Độ xa(m)');
ylabel('Độ cao(m)');
hold on
vat = plot(x,y,'rs','MarkerSize',10,'markerfacecolor','r');
khicau=plot(A,B,'bo','MarkerSize',15,'markerfacecolor','r');
tg=title(sprintf('t= %0.2f s',T));
axis([0 X 0 Y]);
%% CALCULATION
while n<1000
    n=n+1;
    T=dt(n); 
    x=(a*v0*T^2)/2;
    y=v0*T;
    A=x;
    B=y+0.6;
    plot(x,y,'.','markersize',5,'color','k');
    set(vat,'xdata',x,'ydata',y);
    set(khicau,'xdata',A,'ydata',B);
    set(tg,'string',sprintf('t= %0.2f s',T));
    pause(0.00001); 
end
disp(['Độ cao cuối cùng:' num2str(y) '(m)']);
disp(['Độ xa cuối cùng:' num2str(x) '(m)']);
end