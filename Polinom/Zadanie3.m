%3a///////////////////////////////////////////////////////////////////////////////////////////////////
c = load('C:\Users\samsung\Documents\SPPO\MATLAB\roots.txt'); %создаем матрицу из файла
p = poly(c) %находим коэффициенты полинома
ps = poly2sym(p) %формируем полином
rP = roots(p);    %вычисляем его корни и избавляемся от  мнимых корней
ind=abs(imag(rP))<1e-20;
r=rP(ind);
figure
title('График характеристического полинома матрицы')
xlabel('x')
ylabel('y')
hold on
grid on
x1=-1:0.02:12;
y1=polyval(p,x1);
plot(x1,y1);
plot(r,0,'ro');
axis([-1 11.6 -2*10^6 3*10^6])
%3b///////////////////////////////////////////////////////////////////////////////////////////////////
x2_1=0:0.02:0.8;
x2_2=9.4:0.02:10;
y2_1=polyval(p,x2_1);
y2_2=polyval(p,x2_2);
figure
plot(x2_1,y2_1);
xlabel('x')
ylabel('y')
hold on
grid on
xlim([0 0.8])
figure
plot(x2_2,y2_2);
xlabel('x')
ylabel('y')
hold on
grid on
xlim([9.4 10])
%3c///////////////////////////////////////////////////////////////////////////////////////////////////
da = polyder(p) %находим производную 1
db = polyder(da) %находим производную 2
dc = polyder(db) %находим производную 3

d1 = poly2sym(da) %формируем полином производной
rP1 = roots(da); %находим корни
ind=abs(imag(rP1))<1e-20;
r1=rP1(ind)

d2 = poly2sym(db) %полином второй производной
rP2 = roots(db); %корни
ind=abs(imag(rP2))<1e-20;
r2=rP2(ind)

d3 = poly2sym(dc) %третьей производной
rP3 = roots(dc); %корни
ind=abs(imag(rP3))<1e-20;
r3=rP3(ind)
%3d///////////////////////////////////////////////////////////////////////////////////////////////////
x3=-1:0.02:12;
y3_1=polyval(p,x3);
y3_2=polyval(da,x3);
y3_3=polyval(db,x3);
y3_4=polyval(dc,x3);

figure;

subplot(4, 1, 1)
title('График характеристического полинома матрицы')
xlabel('x')
ylabel('y')
hold on
grid on
plot(x3,y3_1);
plot(r,0,'ro');
xlim([-1 12])

subplot(4, 1, 2)
title('Первая производная')
xlabel('x')
ylabel('y')
hold on
grid on
plot(x3,y3_2);
plot(r1,0,'ro');
xlim([-1 12])

subplot(4, 1, 3)
title('Вторая производная')
xlabel('x')
ylabel('y')
hold on
grid on
plot(x3,y3_3);
plot(r2,0,'ro');
xlim([-1 12])

subplot(4, 1, 4)
title('Третья производная')
xlabel('x')
ylabel('y')
hold on
grid on
plot(x3,y3_4);
plot(r3,0,'ro');
xlim([-1 12])
%3e//////////////////////////////////////////////////////////////////////////////
%вещественные корни производной возьмем из предыдущего задания
y=eksfun(x1);
[xmin1] = fminbnd('eksfun',10,12) ;%находим минимум функции
[xmin2] = fminbnd('eksfun',8, 9);
[xmin3] = fminbnd('eksfun',4, 5);
[xmin4] = fminbnd('eksfun',0, 1);
[xmax1] = fminbnd('eksfun1',9, 10);%находим максимум (создаем  функцию СР1 с противоположным знаком)
[xmax2] = fminbnd('eksfun1',7, 8);
[xmax3] = fminbnd('eksfun1',0, 1);

pog1 = abs(xmin1-r1(1)) %находим погрешности 
pog2 = abs(xmin2-r1(3))
pog3 = abs(xmin3-r1(5))
pog4 = abs(xmax1-r1(2))
pog5 = abs(xmax2-r1(4))
pog6 = abs(xmin4-r1(7))
pog7 = abs(xmax3-r1(6))
%3f//////////////////////////////////////////////////////////////////////////////
p(2)=p(2)*(1+0.05-rand(1,1)/10);%вносим погрешность
rf = roots(p);%находим новые корни
d = (rf-rP)./rP %вычисляем изменение





