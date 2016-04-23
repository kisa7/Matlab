A = rand(3, 4)
save('a.txt', 'A', '-ascii')

matr = load('a.txt')

syms s1 s2 s3 

s1 = sin(s3) + cos(s2)
syms x t y
s3 = log(t + 1)
s4 = sym('1/(1 + x^2)')

findsym(s1)
vpa(pi, 250)
digits = 25

collect((x + y)^3 * (x^2 - y + y^2) , y)
expand(cos(3 * x))
factor(x^3 - y^3)
factor(sym('12345678901234567890'))
[n, d] = numden(x / y  + y / x)

simple(cos(x) ^ 2 - sin(x) ^2)
pretty(s4)

syms t g a
f = x^a
g = a^x
diff(f)
diff(g)


s1 = diff(g, 'a')
f = (1 -2 * x) ^(1/ x)
s2 = limit(f, 0)

syms m n
g = (n + x) / (n-1)^n
y = limit(g, 'n', Inf)

f = sin(x)
taylor(f, x, 0, 20)

syms a b c x f d
f = a*x^3 + b*x^2 + c * x + d
t = solve(f)
vpa(t, 50)

syms a11 a12 a21 a22 x1 x2 b1 b2
A = [a11 a12; a21 a22]
b = [b1; b2 ]
x = [x1; x2 ]
y = A * x
d = det(A)
A1 = inv(A)





