x=linspace(0,3,21)
y=sin(x)
z=cos(x)
plot(x,y) 
hold on
plot(y,z)
grid on

figure
plot(x,y, 'r--')
hold on
plot(x,z*100, 'g:')
grid on


x=[-2:0.1:2]
z=sin(x)
y=cos(x)
plot( x, y,'r')
hold on
plot(x,z,'b')
grid on
title('z = sin(x), y = cos(x)')
xlabel('argument') 
ylabel('function')
legend('cos(x)', 'sin(x)', 2)


y1=ftest(3)
t=[1,2]
y2=ftest(t)

t=[-4:0.1:4]
y1=ftest(t)
plot( t, y1,'b')
hold on
grid on
[x2,y2]=fzero(@ftest,-1)
plot(x2,y2,'ro')
x3=fzero('ftest', 1)
plot(x3,0,'r*')
line([x2,x2+0.5],[y2, y2+0.2])
text(x2+0.5, y2+0.2, 'root')

[xm1,ym1]=fminbnd(@ftest,-1,1)
plot(xm1,ym1,'gp')
[xM1,yM1]=fminbnd(@ftestm,-3,0)
plot(xM1,-yM1,'mp')


x=[1,2]
y=[-1,0]
u=stest(x,y)





