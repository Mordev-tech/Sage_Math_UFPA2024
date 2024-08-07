︠a01ac406-1390-4d1c-a52f-11c51aea0557︠

︡97a863b9-b59c-4a03-8567-001a9c8fffde︡
︠7284885f-a867-47ea-9684-269e07152184︠
#Transformação Linear de mudança de Base alpha e beta (R^2 -> R^3)// Obtendo matriz

x, y = var("x, y")
V = SR^2; W = SR^3
V = V.subspace_with_basis([(1, 3), (1, 4)])
W = W.subspace_with_basis([(1, 1, 1), (1, 1, 0), (1, 0, 0)])
s(x, y) = [2*x - y, 2*x - 3*y, 4*x + y]
T = linear_transformation(V, W, s)
C = T.matrix(side='right') #De alfa pra beta
show(C)

︡59c30dc1-441d-4586-ac73-7238b2c9db2a︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n7 &amp; 8 \\\\\n-14 &amp; -18 \\\\\n6 &amp; 8\n\\end{array}\\right)$</div>"}︡{"done":true}
︠0d694501-e96d-4d2a-b941-27eb2f5c422a︠
#Transformação Linear de mudança de Base alpha e beta (R^3 -> R^2)// Obtendo matriz

x, y, z = var("x, y, z")
V = SR^3; W= SR^2
V = V.subspace_with_basis([(1, 1, 1), (1, 1, 0), (1, 0, 0)]) #Alfa
W = W.subspace_with_basis([(1, 3), (1, 4)]) #Beta
s(x, y, z) = [2*x - z, 2*x - 3*y + 4*z]
T = linear_transformation(V, W, s)
C = T.matrix(side='right') #De alfa pra beta
show(C)

︡662e17e2-c63d-4cf9-8c8f-bbc8df61f0b4︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 9 &amp; 6 \\\\\n0 &amp; -7 &amp; -4\n\\end{array}\\right)$</div>"}︡{"done":true}
︠a7d04561-0969-4a0a-825a-b0d069f26c43︠
# Transformação Linear de R^2 -> R^4
x,y = var('x, y')
s(x,y) = [2*x +y, 5*y,x+3*y,x]
T = linear_transformation(SR^2,SR^4,s)
show(T)
︡4e2907af-44b6-4f8f-a245-5e05dc4acfe2︡{"html":"<div align='center'>$\\displaystyle \\text{vector space morphism from }\n\\text{SR}^{2}\\text{ to }\n\\text{SR}^{4}\\text{ represented by the matrix }\n\\left(\\begin{array}{rrrr}\n2 &amp; 0 &amp; 1 &amp; 1 \\\\\n1 &amp; 5 &amp; 3 &amp; 0\n\\end{array}\\right)$</div>"}︡{"done":true}
︠dedb8186-7c30-4f16-bc71-e607e7d4b2c2s︠
# Transformação Linear de R^3 -> R^n
x,y,z = var('x, y, z')
s(x,y,z) = [2*x +y - z, 5*y+z]
T = linear_transformation(SR^3,SR^2,s)
show(T)
︡4d5a715e-d7aa-4397-89ea-40206ef16b1c︡{"html":"<div align='center'>$\\displaystyle \\text{vector space morphism from }\n\\text{SR}^{3}\\text{ to }\n\\text{SR}^{2}\\text{ represented by the matrix }\n\\left(\\begin{array}{rr}\n2 &amp; 0 \\\\\n1 &amp; 5 \\\\\n-1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠493ece54-5dd8-4c36-ac88-e31e317801b4s︠
# Transformação Linear de R^4 -> R^n
x,y,z,w = var('x, y, z, w')
s(x,y,z,w) = [2*x +y - z + w, 15*y+w]
T = linear_transformation(SR^4,SR^2,s)
show(T)
︡1ca94a54-27c2-4507-a699-3e981983dcbf︡{"html":"<div align='center'>$\\displaystyle \\text{vector space morphism from }\n\\text{SR}^{4}\\text{ to }\n\\text{SR}^{2}\\text{ represented by the matrix }\n\\left(\\begin{array}{rr}\n2 &amp; 0 \\\\\n1 &amp; 15 \\\\\n-1 &amp; 0 \\\\\n1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠751c767c-838c-43ff-88d4-7c457f17596fs︠
#Transformação Linear usando a imagem

# Em caso de termos a imagem gerada
V = SR^3 
W = SR^4
T = linear_transformation(V, W, [[2, -3, 0, 0], [0, 5, 0, 0], [pi, 0, 0, 1]]) # Coloque a imagem aqui

#Após conseguir a matriz representada, iremos calcular cada elemento de base 
var('x,y,z')
T(V.basis()[0])
T(V.basis()[1])
T(V.basis()[2])
show(T([x,y,z]))
︡71146767-d9a9-47bc-9f34-7ee09d883fbd︡{"stdout":"(x, y, z)\n"}︡{"stdout":"(2, -3, 0, 0)\n"}︡{"stdout":"(0, 5, 0, 0)\n"}︡{"stdout":"(pi, 0, 0, 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\pi z + 2 \\, x,\\,-3 \\, x + 5 \\, y,\\,0,\\,z\\right)$</div>"}︡{"done":true}
︠4b1b0cca-5c9b-428c-adbc-dae57b19a390︠
#Operações com transformações
x,y,z,w = var('x, y, z, w')
s1(x,y,z,w) = [2*x +y - z + w, 15*y+w]
T1 = linear_transformation(SR^4,SR^2,s1)
s2(x,y,z,w) = [x +y - z + w, 4*y+w]
T2 = linear_transformation(SR^4,SR^2,s2)
op = T1 + 3*T2
show(op)
︡b956b2d5-b75b-46c6-adb5-fd74fe10cb0f︡{"html":"<div align='center'>$\\displaystyle \\text{vector space morphism from }\n\\text{SR}^{4}\\text{ to }\n\\text{SR}^{2}\\text{ represented by the matrix }\n\\left(\\begin{array}{rr}\n5 &amp; 0 \\\\\n4 &amp; 27 \\\\\n-4 &amp; 0 \\\\\n4 &amp; 4\n\\end{array}\\right)$</div>"}︡{"done":true}









