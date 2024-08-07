︠1f556121-78e4-4f26-8cf9-0f36c3c5409f︠
"""
Autovalores e Autovetores

"""
#Polinômio Característico

A = matrix(2, 2, [1, 3, 3, 4])
T = linear_transformation(A, side='right')
PC = T.charpoly()
PC_factorado = PC.factor()
show(PC_factorado)

︡9e6b440c-3679-4418-9da0-0bd26580b76d︡{"stdout":"'\\nAutovalores e Autovetores\\n\\n'\n"}︡{"html":"<div align='center'>$\\displaystyle (x^{2} - 5 x - 5)$</div>"}︡{"done":true}
︠8ac01e7d-3808-4c67-8c4b-b27d1ef3281a︠


#Calculando autovalor e autovetores da matriz
A = matrix(SR, [[2, 4, -3], [0, -4, 0], [-3, 3, 2]])

# Calcular os autovalores
x = A.eigenvalues()

# Calcular os autovetores  e os subespaços associados 
y = A.eigenvectors_right()

# Calcular os autovetores e subespaços para a matriz transposta
z= A.transpose().eigenvectors_right()

show(x)
show(y)
show(z)




︡322affec-5541-41f2-a6d5-b7fbe7b5f304︡{"html":"<div align='center'>[$\\displaystyle 5$, $\\displaystyle -1$, $\\displaystyle -4$]</div>"}︡{"html":"<div align='center'>[($\\displaystyle 5$, [$\\displaystyle \\left(1,\\,0,\\,-1\\right)$], $\\displaystyle 1$), ($\\displaystyle -1$, [$\\displaystyle \\left(1,\\,0,\\,1\\right)$], $\\displaystyle 1$), ($\\displaystyle -4$, [$\\displaystyle \\left(1,\\,-\\frac{9}{11},\\,\\frac{10}{11}\\right)$], $\\displaystyle 1$)]</div>"}︡{"html":"<div align='center'>[($\\displaystyle 5$, [$\\displaystyle \\left(1,\\,\\frac{1}{9},\\,-1\\right)$], $\\displaystyle 1$), ($\\displaystyle -1$, [$\\displaystyle \\left(1,\\,\\frac{7}{3},\\,1\\right)$], $\\displaystyle 1$), ($\\displaystyle -4$, [$\\displaystyle \\left(0,\\,1,\\,0\\right)$], $\\displaystyle 1$)]</div>"}︡{"done":true}
︠91c96777-a2af-4594-b51e-06dbfb54fd82s︠

#Calculando autovalor e autovetores da transformação linear
A = matrix(QQ, [[2, 4], [1, 2]])
T = linear_transformation(A,side='right')
x = T.eigenvalues()
y = T.eigenvectors()
print('Respectivamente, os autovalores e autovetores:')
show(A)
show(x)
show(y)
︡67b5e245-938f-484e-965b-1148c39312d7︡{"stdout":"Respectivamente, os autovalores e autovetores:\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n2 &amp; 4 \\\\\n1 &amp; 2\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>[$\\displaystyle 4$, $\\displaystyle 0$]</div>"}︡{"html":"<div align='center'>[($\\displaystyle 4$, [$\\displaystyle \\left(1,\\,\\frac{1}{2}\\right)$], $\\displaystyle 1$), ($\\displaystyle 0$, [$\\displaystyle \\left(1,\\,-\\frac{1}{2}\\right)$], $\\displaystyle 1$)]</div>"}︡{"done":true}









