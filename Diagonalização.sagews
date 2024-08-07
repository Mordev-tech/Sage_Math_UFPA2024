︠b812456f-6a32-4568-b24d-46763fe5f75a︠
""""
Diagnolização das Matrizes

""""
# Fazendo a forma diagonal de uma matriz

A = matrix([[1,2,3],[1,2,3],[1,2,3]])
D, P = A.eigenmatrix_right();
show(D, P)
x = P.inverse()*A*P 
y = P*D*P.inverse() #Se D, P = A*P, é diagnolizável se P é invertível
show(x)
show(y)
︡fd27ea6b-8011-42e0-a8d5-560d990cc12e︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n6 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0\n\\end{array}\\right)$ $\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 \\\\\n1 &amp; -\\frac{1}{3} &amp; -\\frac{2}{3}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n6 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 2 &amp; 3 \\\\\n1 &amp; 2 &amp; 3 \\\\\n1 &amp; 2 &amp; 3\n\\end{array}\\right)$</div>"}︡{"done":true}
︠95b1697c-d86a-4076-a454-bb44156b3683︠
# Criando a matriz de bloco de Jordan
J = matrix.jordan_block(5, 3)

if J.is_invertible():
    D, P = J.eigenmatrix_right()
    show(D, P)
    if J*P == P*D:
        print("A matriz é diagonalizável")
    else:
        print("A matriz não é diagonalizável")
else:
    print("A matriz não é inversível. logo não se pode diagonalizá-la.")

︡a23845f2-3445-44b7-b984-9cbc496a1f86︡{"stdout":"A matriz não é inversível. Não é possível diagonalizá-la.\n"}︡{"done":true}









