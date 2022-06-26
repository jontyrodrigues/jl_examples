using PyPlot
using CurveFit

U = 1.0:20.0
E = @. sqrt(2 + 1 * U ^ 0.45) + randn()/60
e = range(minimum(E), maximum(E), length=50)

f1 = curve_fit(KingFit, E, U)
U1 = f1.(e)

f2 = curve_fit(Polynomial, E, U, 5)
U2 = f2.(e)

plot(U, E, "o", U1, e, "r-", U2, e, "g-", linewidth=3)