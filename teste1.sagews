︠510024f6-061b-49e6-a9e1-66f6728a6579s︠
from sage.plot.scatter_plot import scatter_plot

# Definindo a matriz
a11 = 2
a12 = 3
a21 = 2
a22 = 1

A = matrix(QQ, [[a11, a12], [a21, a22]])

B_1 = A.column(0)
B_2 = A.column(1)

# Calculando os autovetores e autovalores
PC = A.charpoly()
PC_factorado = PC.factor()
autovalores = A.eigenvalues()
autovetores = A.eigenvectors_right()

# Calculando o núcleo e a imagem
nucleo = A.right_kernel()
imagem = A.image()
imagem_base = imagem.basis()

# Imprimindo as informações
autovetores_coords = [(v[1][0][0], v[1][0][1]) for v in autovetores]
autovalores_coords = [(v[0], 0) for v in autovalores]
show('Temos a Matriz:', A)
show('Polinômio Característico:', PC, '= 0')
show('Polinômio Característico Fatorado:', PC_factorado, '= 0')
show('Temos os autovetores:', autovetores_coords)
show('Temos os autovalores:', autovalores)
show('Temos T(e1):', B_1)
show('Temos T(e2):', B_2)
show('Temos o núcleo:', nucleo)
show('Temos a imagem do espaço gerado:', imagem_base)

# Plotando os pontos
grafico_auto = point((autovetores_coords[0],autovetores_coords[1]), color='green', fontsize=14, size=50)
grafico_auto += point(B_1, color='blue', fontsize=14, size=50)
grafico_auto += point(B_2, color='blue', fontsize=14, size=50)

# Plotando as setas para os autovetores
for coord in autovetores_coords:
    grafico_auto += arrow((0, 0), coord, color='green', width=2,legend_label='Autovetores')

# Plotando as setas para as colunas da matriz
grafico_auto += arrow((0, 0), B_1, color='blue', width=2, legend_label='T(e1)')
grafico_auto += arrow((0, 0), B_2, color='blue', width=2, legend_label='T(e2)')

# Imagem dos autovetores
for v in autovetores_coords:
    imagem_autovetor = A * vector(v)
    grafico_auto += point((imagem_autovetor[0], imagem_autovetor[1]), color='orange', fontsize=14, size=50)
    grafico_auto += arrow((0, 0), (imagem_autovetor[0], imagem_autovetor[1]), color='orange', width=2, legend_label='Imagem do Autovetor')
    

# Plotando as setas para o núcleo
arrows_nucleo = sum([arrow((0, 0), (v[0], v[1]), color='pink', width=1, legend_label='Núcleo') for v in nucleo.basis()])

# Mostrando o gráfico
show(grafico_auto + arrows_nucleo, aspect_ratio=1, ymax=4, ymin=-1, xmin=-4, xmax=5)


︡cea8ff2f-7e45-40d4-983f-9511c09c9e95︡{"html":"<div align='center'>Temos a Matriz: $\\displaystyle \\left(\\begin{array}{rr}\n2 &amp; 3 \\\\\n2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>Polinômio Característico: $\\displaystyle x^{2} - 3 x - 4$ = 0</div>"}︡{"html":"<div align='center'>Polinômio Característico Fatorado: $\\displaystyle (x - 4) \\cdot (x + 1)$ = 0</div>"}︡{"html":"<div align='center'>Temos os autovetores: [($\\displaystyle 1$, $\\displaystyle \\frac{2}{3}$), ($\\displaystyle 1$, $\\displaystyle -1$)]</div>"}︡{"html":"<div align='center'>Temos os autovalores: [$\\displaystyle 4$, $\\displaystyle -1$]</div>"}︡{"html":"<div align='center'>Temos T(e1): $\\displaystyle \\left(2,\\,2\\right)$</div>"}︡{"html":"<div align='center'>Temos T(e2): $\\displaystyle \\left(3,\\,1\\right)$</div>"}︡{"html":"<div align='center'>Temos o núcleo: $\\displaystyle \\mathrm{RowSpan}_{\\Bold{Q}}()$</div>"}︡{"html":"<div align='center'>Temos a imagem do espaço gerado: [$\\displaystyle \\left(1,\\,0\\right)$, $\\displaystyle \\left(0,\\,1\\right)$]</div>"}︡{"file":{"filename":"/tmp/tmp6djegici/tmp_l549clqb.svg","show":true,"text":null,"uuid":"fbed870e-7f88-44a4-8aae-e5edd7eac3bd"},"once":false}︡{"done":true}









