% PT QUY DAO
% clc                                                                         
close all                                                 
clear all 
%%
% 1.  NHAP CAC GIA TRI BAN DAU
x0=input('nhap gia tri x0=');
y0=input('nhap gia tri y0=');
phi=input('nhap gia tri cua phi=');
%%
% 2.1 THIET LAP CAC PHUONG TRINH TUONG UNG
T=linspace(0,5,1000);                                            
syms t                                                           
X=x0*cos(5*T);                                                   
Y=y0*cos(5*T+phi);

%%
% 2.2 PHUONG TRINH CHUYEN DONG CUA VAT
disp('-----------------------------');
disp('phuong trinh chuyen dong cua vat la:')
x=x0*cos(5*t)                                                    
y=y0*cos(5*t+phi)
%%
% 2.3 KET LUAN PT QUY DAO CUA VAT
disp('-----------------------------');
if x0==y0                                                        
      if mod(phi,pi)==0 disp('quy dao la duong thang');         
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
a1=subplot(2,2,1);                                               
plot(a1,X,Y,'r','linewidth',2);                                 
axis equal                                                       
xlabel('X')                                                      
ylabel('Y')
grid on                                                         
title('PT QUY DAO CUA VAT')                                      

%%
% 3.QUY DAO CUA VAT THEO THOI GIAN
disp('-----------------------------');
t0=input('nhap gia tri ban dau t0=');
t1=input('nhap gia tri luc sau t1=');
disp('(xem do thi)');
T1=linspace(t0,t1,1000);                                         
X1=x0*cos(5*T1);                                                 
Y1=y0*cos(5*T1+phi);
a2=subplot(2,2,2);                                             
plot(a2,X1,Y1,'b','linewidth',2);                              
axis equal
xlabel('X')
ylabel('Y')
grid on
title('QUY DAO CUA VAT THEO THOI GIAN')                          


    
