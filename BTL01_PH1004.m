% PT QUY DAO
clc                                                            % xoa cua so lenh             
close all                                                      % dong cua so do thi                
clear all                                                      % xoa all bien, ham trong bo nho 
%%
% 1.  NHAP CAC GIA TRI BAN DAU
x0=input('nhap gia tri x0=');
y0=input('nhap gia tri y0=');
phi=input('nhap gia tri cua phi=');
%%
% 2.1 THIET LAP CAC PHUONG TRINH TUONG UNG
T=linspace(0,5,1000);                                            % khai bao T ngau nhien chay tu 0 den 5 voi 1000 diem cach deu nhau de ve quy dao
syms t                                                           %khai bao bien t de hien thi pt chuyen dong
X=x0*cos(5*T);                                                   % X Y de ve quy dao phan biet voi x y dung de hien thi pt chuyen dong
Y=y0*cos(5*T+phi);

%%
% 2.2 PHUONG TRINH CHUYEN DONG CUA VAT
disp('-----------------------------');
disp('phuong trinh chuyen dong cua vat la:')
x=x0*cos(5*t)                                                    %pt cd cua vat là x và y
y=y0*cos(5*t+phi)
%%
% 2.3 KET LUAN PT QUY DAO CUA VAT
disp('-----------------------------');
if x0==y0                                                        %disp là hàm hien thi
      if mod(phi,pi)==0 disp('quy dao la duong thang');          %mod là hàm chia lay du
      else 
          if mod(phi,pi/2)==0 disp ('quy dao la duong tron');
          else disp('quy dao la elip');
          end
      end
else
      if mod(phi,pi)==0 disp('quy dao la duong thang')
      else disp('quy dao la elip')
      end
end
%%
% 2.4 DO THI QUY DAO
a1=subplot(2,2,1);                                               %a1 la ki hieu bieu thuc hàm subplot, lenh subplot(m,n,p) chia cua so hien tai thanh ma tran m x n khoang ?? voi p la cua so thu p
plot(a1,X,Y,'r','linewidth',2);                                  %ve do thj tren o a1 voi truc hoành X, truc tung Y,mau do,do rong net =2pt  
axis equal                                                       % chia khoang sao cho  x,y có do rong = nhau
xlabel('X')                                                      %kí hieu tren truc X và Y
ylabel('Y')
grid on                                                          %luoi
title('PT QUY DAO CUA VAT')                                      %tiêu de

%%
% 3.QUY DAO CUA VAT THEO THOI GIAN
disp('-----------------------------');
t0=input('nhap gia tri ban dau t0=');
t1=input('nhap gia tri luc sau t1=');
disp('(xem do thi)');
T1=linspace(t0,t1,1000);                                         %T1 là bien time chay tu to den t1 voi 1000 diem cach deu nhau
X1=x0*cos(5*T1);                                                 
Y1=y0*cos(5*T1+phi);
a2=subplot(2,2,2);                                               %a2 la ki hieu bieu thuc hàm subplot, lenh subplot(m,n,p) chia cua so hien tai thanh ma tran m x n khoang ?? voi p la cua so thu p
plot(a2,X1,Y1,'b','linewidth',2);                                %ve do thi tren o a2 voi truc hoành X1, truc tung Y1, net ve màu xanh, do rong net =2pt
axis equal
xlabel('X')
ylabel('Y')
grid on
title('QUY DAO CUA VAT THEO THOI GIAN')                          %tiêu de


    
