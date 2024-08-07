︠999e7250-d245-499c-827d-cd6239d6edb6s︠
a11, a12, a13 = 2, 3, 0
a21, a22, a23 = 2, 1, 1
a31, a32, a33 = 2, 2, 1

A = matrix(SR, [[a11, a12, a13], [a21, a22, a23],[a31, a32, a33]])

B_1 = A.column(0)
B_2 = A.column(1)
B_3 = A.column(2)


autovalores = A.eigenvalues()
autovetores = A.eigenvectors_right()
nucleo = A.right_kernel()
imagem = A.image()

print(A)

autovetores_coords = [(v[1][0][0], v[1][0][1], v[1][0][2]) for v in autovetores]
show('Temos a Matriz:', A)
show('Temos os autovetores:', autovetores_coords)
show('Temos os autovalores:', autovalores)
show('Temos T(e1):', B_1)
show('Temos T(e2):', B_2)
show('Temos T(e3):', B_3)
show('Temos o núcleo:', nucleo)


grafico = point((autovetores_coords[0],autovetores_coords[1],autovetores_coords[2]), color='green', fontsize=14, size=20)
grafico += point(B_1, color='blue', fontsize=14, size=20)
grafico += point(B_2, color='blue', fontsize=14, size=20)
grafico += point(B_3, color='blue', fontsize=14, size=20)

for i in autovetores_coords:
    grafico += arrow((0, 0, 0), i, color='green', legend_label='Autovetores')
    
grafico += arrow((0, 0,0), B_1, color='blue', width=1, legend_label='T(e1)')
grafico += arrow((0, 0,0), B_2, color='blue', width=1, legend_label='T(e2)')
grafico += arrow((0, 0,0), B_3, color='blue', width=1, legend_label='T(e2)')

for v in autovetores_coords:
    imagem_autovetor = A * vector(v)
    grafico += point((imagem_autovetor[0], imagem_autovetor[1],imagem_autovetor[2]), color='orange', fontsize=14, size=20)
    grafico += arrow((0, 0,0), (imagem_autovetor[0], imagem_autovetor[1],imagem_autovetor[2]), color='orange', width=2, legend_label='Imagem do Autovetor')
for v in nucleo.basis():
    grafico += arrow((0, 0,0), (v[0], v[1],v[2]), color='pink', width=1, legend_label='Núcleo')
show(grafico)
print("Azul são as imagens da coluna")
print("Laranja é a imagem do autovetor")
print("Verde são os autovetores")
︡40d619cf-a730-4dd3-82ed-863c7ca280cc︡{"stdout":"[2 3 0]\n[2 1 1]\n[2 2 1]\n"}︡{"html":"<div align='center'>Temos a Matriz: $\\displaystyle \\left(\\begin{array}{rrr}\n2 &amp; 3 &amp; 0 \\\\\n2 &amp; 1 &amp; 1 \\\\\n2 &amp; 2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>Temos os autovetores: [($\\displaystyle 1$, $\\displaystyle -\\frac{1}{6} \\, \\sqrt{17} + \\frac{1}{6}$, $\\displaystyle -\\frac{1}{3} \\, \\sqrt{17} - \\frac{1}{3}$), ($\\displaystyle 1$, $\\displaystyle \\frac{1}{6} \\, \\sqrt{17} + \\frac{1}{6}$, $\\displaystyle \\frac{1}{3} \\, \\sqrt{17} - \\frac{1}{3}$), ($\\displaystyle 1$, $\\displaystyle -1$, $\\displaystyle 0$)]</div>"}︡{"html":"<div align='center'>Temos os autovalores: [$\\displaystyle -\\frac{1}{2} \\, \\sqrt{17} + \\frac{5}{2}$, $\\displaystyle \\frac{1}{2} \\, \\sqrt{17} + \\frac{5}{2}$, $\\displaystyle -1$]</div>"}︡{"html":"<div align='center'>Temos T(e1): $\\displaystyle \\left(2,\\,2,\\,2\\right)$</div>"}︡{"html":"<div align='center'>Temos T(e2): $\\displaystyle \\left(3,\\,1,\\,2\\right)$</div>"}︡{"html":"<div align='center'>Temos T(e3): $\\displaystyle \\left(0,\\,1,\\,1\\right)$</div>"}︡{"html":"<div align='center'>Temos o núcleo: $\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}()$</div>"}︡{"file":{"filename":"fcea83a5-7dd0-4903-b4f0-ede4d70c63a7.sage3d","uuid":"fcea83a5-7dd0-4903-b4f0-ede4d70c63a7"}}︡{"stdout":"Azul são as imagens da coluna\n"}︡{"stdout":"Laranja é a imagem do autovetor\n"}︡{"stdout":"Verde são os autovetores\n"}︡{"done":true}
︠cfe9f94e-28bd-43c4-bee9-960f1cb13c5ds︠
#Aleatório

A = random_matrix(SR, 3, 3)

B_1 = A.column(0)
B_2 = A.column(1)
B_3 = A.column(2)


autovalores = A.eigenvalues()
autovetores = A.eigenvectors_right()
nucleo = A.right_kernel()
imagem = A.image()

print(A)

autovetores_coords = [(v[1][0][0], v[1][0][1], v[1][0][2]) for v in autovetores]
show('Temos a Matriz:', A)
show('Temos os autovetores:', autovetores_coords)
show('Temos os autovalores:', autovalores)
show('Temos T(e1):', B_1)
show('Temos T(e2):', B_2)
show('Temos T(e3):', B_3)
show('Temos o núcleo:', nucleo)


grafico = point((autovetores_coords[0],autovetores_coords[1],autovetores_coords[2]), color='green', fontsize=14, size=20)
grafico += point(B_1, color='blue', fontsize=14, size=20)
grafico += point(B_2, color='blue', fontsize=14, size=20)
grafico += point(B_3, color='blue', fontsize=14, size=20)

for i in autovetores_coords:
    grafico += arrow((0, 0, 0), i, color='green', legend_label='Autovetores')
    
grafico += arrow((0, 0,0), B_1, color='blue', width=1, legend_label='T(e1)')
grafico += arrow((0, 0,0), B_2, color='blue', width=1, legend_label='T(e2)')
grafico += arrow((0, 0,0), B_3, color='blue', width=1, legend_label='T(e2)')

for v in autovetores_coords:
    imagem_autovetor = A * vector(v)
    grafico += point((imagem_autovetor[0], imagem_autovetor[1],imagem_autovetor[2]), color='orange', fontsize=14, size=20)
    grafico += arrow((0, 0,0), (imagem_autovetor[0], imagem_autovetor[1],imagem_autovetor[2]), color='orange', width=2, legend_label='Imagem do Autovetor')
for v in nucleo.basis():
    grafico += arrow((0, 0,0), (v[0], v[1],v[2]), color='pink', width=1, legend_label='Núcleo')
show(grafico)
print("Azul são as imagens da coluna")
print("Laranja é a imagem do autovetor")
print("Verde são os autovetores")
︡b3c06e6d-734e-4b46-87d6-aea155c519a6︡{"stdout":"[ 1 -2  1]\n[ 1  2  1]\n[ 0  1  0]\n"}︡{"html":"<div align='center'>Temos a Matriz: $\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; -2 &amp; 1 \\\\\n1 &amp; 2 &amp; 1 \\\\\n0 &amp; 1 &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>Temos os autovetores: [($\\displaystyle 1$, $\\displaystyle \\frac{2}{7} i \\, \\sqrt{3} - \\frac{3}{7}$, $\\displaystyle \\frac{1}{14} i \\, \\sqrt{3} - \\frac{5}{14}$), ($\\displaystyle 1$, $\\displaystyle -\\frac{2}{7} i \\, \\sqrt{3} - \\frac{3}{7}$, $\\displaystyle -\\frac{1}{14} i \\, \\sqrt{3} - \\frac{5}{14}$), ($\\displaystyle 1$, $\\displaystyle 0$, $\\displaystyle -1$)]</div>"}︡{"html":"<div align='center'>Temos os autovalores: [$\\displaystyle -\\frac{1}{2} i \\, \\sqrt{3} + \\frac{3}{2}$, $\\displaystyle \\frac{1}{2} i \\, \\sqrt{3} + \\frac{3}{2}$, $\\displaystyle 0$]</div>"}︡{"html":"<div align='center'>Temos T(e1): $\\displaystyle \\left(1,\\,1,\\,0\\right)$</div>"}︡{"html":"<div align='center'>Temos T(e2): $\\displaystyle \\left(-2,\\,2,\\,1\\right)$</div>"}︡{"html":"<div align='center'>Temos T(e3): $\\displaystyle \\left(1,\\,1,\\,0\\right)$</div>"}︡{"html":"<div align='center'>Temos o núcleo: $\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; -1\n\\end{array}\\right)$</div>"}︡{"stderr":"Error in lines 18-18\nTraceback (most recent call last):\n  File \"/ext/sage/10.3/src/sage/plot/point.py\", line 393, in point\n    return point2d(points, **kwds)\n           ^^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/misc/decorators.py\", line 658, in wrapper\n    return func(*args, **kwds)\n           ^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/misc/decorators.py\", line 497, in wrapper\n    return func(*args, **options)\n           ^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/plot/point.py\", line 615, in point2d\n    xdata, ydata = xydata_from_point_list(points)\n                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/plot/plot.py\", line 832, in xydata_from_point_list\n    x, y = xy\n    ^^^^\nValueError: too many values to unpack (expected 2)\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"sage/symbolic/expression.pyx\", line 1964, in sage.symbolic.expression.Expression.__float__\n    raise\n  File \"sage/symbolic/expression.pyx\", line 1957, in sage.symbolic.expression.Expression.__float__\n    ret = float(self._eval_self(float))\n  File \"sage/symbolic/expression.pyx\", line 1637, in sage.symbolic.expression.Expression._eval_self\n    return R(ans)\nTypeError: float() argument must be a string or a real number, not 'complex'\n\nDuring handling of the above exception, another exception occurred:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.3/src/sage/plot/point.py\", line 396, in point\n    return point3d(points, **kwds)\n           ^^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/misc/decorators.py\", line 658, in wrapper\n    return func(*args, **kwds)\n           ^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/plot/plot3d/shapes2.py\", line 1510, in point3d\n    A = sum([Point(z, size, **kwds) for z in v])\n            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/plot/plot3d/shapes2.py\", line 1510, in <listcomp>\n    A = sum([Point(z, size, **kwds) for z in v])\n             ^^^^^^^^^^^^^^^^^^^^^^\n  File \"/ext/sage/10.3/src/sage/plot/plot3d/shapes2.py\", line 907, in __init__\n    self.loc = (float(center[0]), float(center[1]), float(center[2]))\n                                  ^^^^^^^^^^^^^^^^\n  File \"sage/symbolic/expression.pyx\", line 1966, in sage.symbolic.expression.Expression.__float__\n    raise TypeError(\"unable to simplify to float approximation\")\nTypeError: unable to simplify to float approximation\n"}︡{"done":true}


















