x=[-1.5:0.2:1.5]
y=[-1.5:0.1:1.5]
[X,Y]=meshgrid(x,y)
Z=stest( X, Y)
subplot( 2, 2, 1)
mesh(X,Y,Z)
subplot( 2, 2, 2)
surf(X,Y,Z)
subplot( 2, 2, 3)
contour(X,Y,Z)


x=[-1.5:0.2:1.5]
y=[-1.5:0.1:1.5]
[X,Y]=meshgrid(x,y)
Z=stest( X, Y)
surf(X,Y,Z)
shading interp
shading flat
shading faceted
colormap gray
colormap cool
colormap summer



x=[-1.5:0.2:1.5]
y=[-1.5:0.1:1.5]
[X,Y]=meshgrid(x,y)
Z=stest( X, Y)
surfl(X,Y,Z)
shading interp
colormap gray
view(-30,50)
ind = Z > 0.9
Z1 = Z 
Z1(ind) = NaN
surf(X, Y, Z1)


