︠cb8f1a79-c651-48d5-8fe9-e81dbe05f3b3︠
from sage.plot.scatter_plot import scatter_plot
from sage.plot.arrow import Arrow

# Definindo a matriz de rotação
theta = pi/4  # Ângulo de rotação (45 graus)
R = matrix(CDF,[[cos(theta), -sin(theta)], [sin(theta), cos(theta)]])

B_1 = R.column(0)
B_2 = R.column(1)

show(R)

# Calculando os autovetores e autovalores
autovalores = R.eigenvalues()
autovetores = R.eigenvectors_right()

# Extraindo os autovetores (tomando a parte real do vetor complexo)
autovetores_coords = [(v[1][0][0], v[1][0][1]) for v in autovetores]

# Plotando os pontos e as setas para os autovetores
grafico += arrow((0, 0), B_1, color='green', width=2)
grafico += arrow((0, 0), B_2, color='green', width=2)

# Mostrando o gráfico
show(grafico, aspect_ratio=1, xmax=1.5, xmin=-1.5, ymax=1.5, ymin=-1.5)




︡0ee14a0c-e1b6-4295-8f6c-7280ee4f8aac︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n0.7071067811865475 &amp; -0.7071067811865475 \\\\\n0.7071067811865475 &amp; 0.7071067811865475\n\\end{array}\\right)$</div>"}︡{"file":{"filename":"/tmp/tmpbztmz3ud/tmp_n61am_ur.svg","show":true,"text":null,"uuid":"0b4f9d7e-ab1e-4290-9d2c-04810426b2f5"},"once":false}︡{"done":true}
︠4e554678-6e05-4977-be08-50a6b8d01380s︠
from sage.plot.scatter_plot import scatter_plot
from sage.plot.arrow import Arrow

# Definindo a matriz de rotação
theta = pi/4  # Ângulo de rotação (45 graus)
R = matrix([[cos(theta), -sin(theta)], [sin(theta), cos(theta)]])
B_1 = R.column(0)
B_2 = R.column(1)


# Calculando os autovetores e autovalores
autovalores = R.eigenvalues()
autovetores = R.eigenvectors_right()
nucleo = R.right_kernel()  

# Extraindo as partes reais e imaginárias dos autovetores
autovetores_coords = [(v[1][0][0](), v[1][0][1]()) for v in autovetores]
autovetores_reais = [(v[1][0][0].real(), v[1][0][1].real()) for v in autovetores]
autovetores_complexos = [(v[1][0][0].imag(), v[1][0][1].imag()) for v in autovetores]

show(autovetores_coords)


# Plotando os pontos e as setas
grafico = point(autovetores_reais, color='red', size=50, legend_label='Autovetores Reais')
grafico += arrow((0, 0), (autovetores_reais[0][0], autovetores_complexos[0][0]), color='red', width=2)
grafico += arrow((0, 0), (autovetores_reais[1][0], autovetores_reais[1][1]), color='red', width=2, legend_label='Autovetor Real')
grafico += point(autovetores_complexos, color='blue', size=50, legend_label='Autovetores Complexos')
grafico += arrow((0, 0), (autovetores_complexos[0][0], autovetores_complexos[0][1]), color='blue', width=2, legend_label='Autovetor Complexo')
grafico += arrow((0, 0), (autovetores_complexos[1][0], autovetores_complexos[1][1]), color='blue', width=2)
grafico += arrow((0, 0), B_1, color='green', width=2)
grafico += arrow((0, 0), B_2, color='green', width=2)
grafico += point(B_1, color='green',size=50, legend_label='T(e1)')
grafico += point(B_2, color='green',size=50, legend_label='T(e2)')
for v in nucleo.basis():
    grafico += arrow((0, 0), (v[0], v[1]), color='pink', width=2, legend_label='Núcleo')
    grafico += point(nucleo.basis(),color='pink',size= 50, legend_label='Núcleo')
# Mostrando o gráfico
show(grafico, aspect_ratio=0.5, xmax=1.5, xmin=-1.5, ymax=2.5, ymin=-2.5)

︡9fa09a4a-f8af-4588-ba59-3f95820fcc4b︡{"html":"<div align='center'>[($\\displaystyle 1$, $\\displaystyle i$), ($\\displaystyle 1$, $\\displaystyle -i$)]</div>"}︡{"file":{"filename":"/tmp/tmpq791_q9m/tmp_gqsssa3a.svg","show":true,"text":null,"uuid":"e4d4095c-7532-4441-bf07-bb16531b0fdf"},"once":false}︡{"done":true}









