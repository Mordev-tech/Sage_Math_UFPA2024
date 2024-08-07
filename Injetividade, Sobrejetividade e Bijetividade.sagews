︠56b5ffd8-9e91-4d56-a5f3-4be8c37bd840s︠
#Descobrindo se uma transformação linear é bijetora
S(x,y,z,w)= [2*x-z+2*w,2*x-3*y+4*z]; #Modificar aqui a transformação
T = linear_transformation(SR^4,SR^2,S); #Modificar SR^"" 
bijetora = T.is_bijective()
injetora = T.is_injective()
sobrejetora = T.is_surjective()

if bijetora:
    print("A transformação" ,T,"é bijetora")
else:
    print("A transformação", T, "não é bijetora")
    show(injetora)
    show(sobrejetora)

︡5276e597-7ef1-4935-bca6-0b88640b1ecc︡{"stdout":"A transformação Vector space morphism represented by the matrix:\n[ 2  2]\n[ 0 -3]\n[-1  4]\n[ 2  0]\nDomain: Vector space of dimension 4 over Symbolic Ring\nCodomain: Vector space of dimension 2 over Symbolic Ring não é bijetora\n"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{False}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{True}$</div>"}︡{"done":true}
︠31db3559-7fca-4a9c-820a-881d0e994064s︠
#Verificando se uma transformação é isomorfismo e calculando a inversa
S(x,y,z) =([2*x-z, 2*x-3*y+4*z, 3*y+z]); #Modificar aqui a transformação 
T = linear_transformation(SR^3,SR^3,S); #Modificar SR^"" 
bijetora = T.is_bijective()
injetora = T.is_injective()
sobrejetora = T.is_surjective()
inverso= T.inverse()([x,y,z])
if bijetora:
    print(T,"é um isomorfismo")
    
else:
    print(T, "não é um isomorfismo")
    show(injetora)
    show(sobrejetora)
show(inverso)
(T*T.inverse())([x,y,z])

︡b1ae99fa-3866-4afd-96db-3bc1efeff713︡{"stdout":"Vector space morphism represented by the matrix:\n[ 2  2  0]\n[ 0 -3  3]\n[-1  4  1]\nDomain: Vector space of dimension 3 over Symbolic Ring\nCodomain: Vector space of dimension 3 over Symbolic Ring é um isomorfismo\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\frac{5}{12} \\, x + \\frac{1}{12} \\, y + \\frac{1}{12} \\, z,\\,\\frac{1}{18} \\, x - \\frac{1}{18} \\, y + \\frac{5}{18} \\, z,\\,-\\frac{1}{6} \\, x + \\frac{1}{6} \\, y + \\frac{1}{6} \\, z\\right)$</div>"}︡{"stdout":"(x, y, z)\n"}︡{"done":true}









