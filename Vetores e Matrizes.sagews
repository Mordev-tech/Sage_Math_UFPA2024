︠5c6ca296-e6e5-4513-bb9f-6da57454b0c9s︠

#Matrizes comuns:

A = matrix([[1,2],[3,4],[5,6]]);A 
B = matrix(3,2,[1,2,3,4,5,6]);B

#Matrizes especiais:
#var = '(m,n,x,y,z)'
#mnula = matrix.zero(m,n) #Essa é a matriz nula, por favor trocar "m" e "n" por valores

#m_identidade = matrix.identity(x) #Essa é a matriz identidade, por favor trocar "x" por algum número. Se por 3, então será uma matriz(3x3)

#m_diagonal = matrix.diagonal(x,y,z)# Essa é a matriz diagonal, troque os elementos "x","y","z" por números, e ele só aparecerão na diagonal

#m_radom = matrix.random(ZZ,m,n) #Código que gera matriz aleatória, ZZ pode ser trocado por outro conjunto numérico (NN,QQ,RR,CC), "m" representa a linha equanto "n" representa a coluna

#sparse_mat = sparse_matrix(ZZ, 5, 5, {(1, 1): 2, (2, 3): 5, (4, 0): -3})


#A = matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
#B = matrix([[1, I], [-I, 2], [-2*I, 1]])

#determinante = A.det()
#transposta = A.transpose()


if A.is_invertible(): 
 inversa = A.inverse()
else:
 inversa = 'Não tem inversa'
︡b0611b8c-ac75-48e2-8a14-3f9dc7a6c73e︡{"stdout":"[1 2]\n[3 4]\n[5 6]\n"}︡{"stdout":"[1 2]\n[3 4]\n[5 6]\n"}︡{"done":true}
︠2b36b513-1e46-429d-a6bd-9d8c3cc5654f︠
Sistemas lineares



#Resolvendo sistemas lineares

var('x y z')
eq1 = 2*x + y - z == 1
eq2 = 2*x + y + 4*z == 2
eq3 = x + 2*y - 5*z == 3

sol = solve([eq1, eq2, eq3], [x, y, z])


show(sol)

#Resolvendo o sistema linear por matriz

#var('x y z')
#A = matrix([[2,1,-1], [2,1,4], [1,2,-5]])
#vetor = vector([1,2,3])
#solucao = A.solve_right(vetor)

#show(solucao)
︡beed8079-5f58-417c-a131-b7755372c2f3︡{"stdout":"'\\nParte final - Sistemas lineares\\n\\n'\n"}︡{"stdout":"(x, y, z)\n"}︡{"html":"<div align='center'>[[$\\displaystyle x = \\left(-\\frac{8}{15}\\right)$, $\\displaystyle y = \\left(\\frac{34}{15}\\right)$, $\\displaystyle z = \\left(\\frac{1}{5}\\right)$]]</div>"}︡{"done":true}









