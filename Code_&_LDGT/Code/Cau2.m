%Thiet lap lai
close all ;
clear all ;

%Nhap du lieu x , y , f
x = input("Nhap cac du lieu cua x :  X \t \t ");
y = input("Nhap cac du lieu cua y :  Y \t \t ");
f = input("Nhap cac du lieu cua f :  f(x,y) \t ");

%Dat n la so luong du kien da duoc nhap
nx = int16(length(x));
ny = int16(length(y));
nf = int16(length(f));

%Vong lap kiem tra so luong du lieu
while 1
  if nx == ny && ny == nf
    break;
  else
        %Nhap du lieu x , y , f
        x = input("Nhap cac du lieu cua x :  X     \t\t");
        y = input("Nhap cac du lieu cua y :  Y     \t\t ");
        f = input("Nhap cac du lieu cua f :  f(x,y) \t ");


        %Dat n la so luong du kien da duoc nhap
        nx = int16(length(x));
        ny = int16(length(y));
        nf = int16(length(f));
      end
end

%Dat n la so luong du lieu da duoc nhap voi n = nx = ny = nf
n = int16(length(x)) ;

%Dat mot so bien phu
Riemann_trungtam = 0;
Riemann_trai = 0;
Riemann_phai = 0;
Sum =0 ;

%Xet dieu kien cua du lieu de tinh tong Riemann phu hop
if (n > 1 && mod(n,2) ~= 0)
  %Du lieu co the tinh Riemann trung tam
        %Vong lap tinh tong Riemann trung tam
        fprintf("Du lieu co the tinh duoc Riemann trung tam \n");
        Riemann_trungtam = 1 ;
        for i = 1: (n-1)

        if mod(i,2) == 0
            Sum = Sum +  f(i) * ( x(i + 1) - x(i - 1) ) * ( y(i +1) - y(i - 1) );

          end

        end



else if (n == 1 || mod(n,2) ==0)
  fprintf("\n Vi so luong du lieu khong phu hop de tinh tong Riemann trung tam nen hay chon cach tinh tong Riemann khac ");
  fprintf("\n Co 2 cach kha dung sau day :");
  fprintf("\n Tinh tong Riemann trai (nhap 1 de kich hoat) va tong Riemann phai (nhap 2 de kich hoat) hoac ngung tinh toan (chon so khac ngoai 2 va 1) \n");
  Kich_hoat = input("Nhap : ");
  Kich_hoat = int16(Kich_hoat);

  %Neu nguoi dung kich hoat Riemann trai (chon 1 )
         if Kich_hoat == 1

                Riemann_trai =1;

                  for i = 1: (n-1)
                            Sum = Sum + f(i)*( x(i+1)-x(i) )*( y(i+1) - y(i) );

                end

        %Neu nguoi dung kich hoat Riemann phai ( chon 2 )
        else if Kich_hoat == 2

                Riemann_phai = 1;
                for i = 2 : n
                Sum = Sum + f(i)*( x(i) - x(i-1) )*( y(i) - y(i-1));

                end
        %Neu nguoi dung nhap mot gia tri khong dinh
      else
                fprintf(" Ban da huy tinh toan ! \n");

        end

        end

   end


end
% In gia tri tong Riemann ra man hinh

if Riemann_trungtam == 1
  fprintf("Tong Riemann trung tam la : Sum = %d \n" , Sum);

        else if Riemann_trai == 1
                fprintf ("Tong Riemann trai la : Sum = %d \n" , Sum);

        else if Riemann_phai == 1
                fprintf ("Tong Riemann phai la : Sum = %d \n" , Sum);

        else

        end

        end
end

