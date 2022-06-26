# an 6*6 matrix
using Hecke

R, x = Hecke.PolynomialRing(Hecke.QQ)

Benzene = [x 1 0 0 0 1; 1 x 1 0 0 0; 0 1 x 1 0 0; 0 0 1 x 1 0; 0 0 0 1 x 1; 1 0 0 0 1 x]
Propene = [x 1 0; 1 x 1; 0 1 x]
Triafluene = [x 1 0 0; 1 x 1 1; 0 1 x 1; 0 1 1 x]

M_Benzene = matrix(R, Benzene)
M_Propene = matrix(R, Propene)
M_Triafluene = matrix(R, Triafluene)

p_benzene = det(M_Benzene)
p_propene = det(M_Propene)
p_triafluene = det(M_Triafluene)

roots_benzene = Hecke.roots(p_benzene)
roots_propene = Hecke.roots(p_propene)
roots_triafluene = Hecke.roots(p_triafluene)

println(p_benzene)

for r in roots_benzene
    println(r)
end

println(p_propene)

for r in roots_propene
    println(r)
end

println(p_triafluene)

for r in roots_triafluene
    println(r)
end
