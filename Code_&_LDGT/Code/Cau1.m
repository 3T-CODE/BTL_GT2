%Reset
clear all ;
close all ;

%Nhap du lieu  f , a , b , c , d , m , n
syms f  x y ;
f = input("Nhap ham f(x,y): f(x,y) = ");

fprintf("Nhap mien gia tri [a,b]x[c,d] \n");
a = double(input("Nhap a : \t "));
b = double(input("Nhap b : \t "));
c = double(input("Nhap c : \t "));
d = double(input("Nhap d : \t "));

fprintf("Nhap khoang chia m  va n voi m la khoan chia cua [a,b] n la khoang chia cua [c,d] \n");
m = input("m = ");
n = input("n = ");

%Chuyen m , n thanh so nguyen
m = int16(m);
n = int16(n);

%Tao mang Smxn
S = zeros(m,n);

%Tao khoang chia
delta_x = double(abs((b-a)/m));
delta_y = double(abs((d-c)/n));

%Chon diem bat dau
x1 = a + delta_x/2
y1 = c + delta_y/2

%Tao vong lap tinh tong Riemann trung tam
Sum = 0 ;
for i = 1:m
        for j = 1:n
                S(i,j) =  double(subs( f , {x,y} , { x1 + (double(i)-1.0) * delta_x  , y1 + (double(j)-1.0) * delta_y  } ));
                Sum = Sum + S(i,j)*delta_x*delta_y;
        end
end

%Xuat ket qua ra man hinh
fprintf("Tong Rieman trung tam theo du kien de bai la :  \n Sum =  %f \n",Sum);



