︠bd23fb22-03d5-4f0d-b7e3-718ddd8f1ddes︠
"""
Núcleo e Imagem

"""
x, y, z = var('x,y,z')
A = matrix(SR, [[x + y - z, 2*x + y + 0, x + 0 + z]])
T = linear_transformation(A, side='right')
N_T = T.kernel()  # Método usual do núcleo
N_A_T = A.kernel()  # Método do núcleo da matriz transposta
N_A = A.right_kernel()  # Método do núcleo da matriz
show(A)
show(T)
show(N_T)
show(N_A_T)
show(N_A)

︡21ea631a-1335-4023-97a8-f3012dcd4b41︡{"stdout":"'\\nNúcleo e Imagem\\n\\n'\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\nx + y - z &amp; 2 \\, x + y &amp; x + z\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\text{vector space morphism from }\n\\text{SR}^{3}\\text{ to }\n\\text{SR}^{1}\\text{ represented by the matrix }\n\\left(\\begin{array}{r}\nx + y - z \\\\\n2 \\, x + y \\\\\nx + z\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; -\\frac{x + y - z}{x + z} \\\\\n0 &amp; 1 &amp; -\\frac{2 \\, x + y}{x + z}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}()$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; -\\frac{x + y - z}{x + z} \\\\\n0 &amp; 1 &amp; -\\frac{2 \\, x + y}{x + z}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠ecc4aa69-ed3c-417c-a479-1bef3d77aca8s︠
#Calculando a imagem

x, y, z = var('x,y,z')
A = matrix(SR, [[x + y - z, 2*x + y, x + z]])
T = linear_transformation(A, side='right')
Im_T = T.image()  # Método usual da imagem
Im_A_t = A.transpose().image()  # Imagem da matriz transposta
Im_A = A.image()  # Imagem da matriz

show(Im_T)
show(Im_A_t)
show(Im_A)

︡eb3fdeb2-e9f0-4161-91a9-d4a4b9ec9319︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{r}\n1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{r}\n1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\text{SR}}\\left(\\begin{array}{rrr}\n1 &amp; \\frac{2 \\, x + y}{x + y - z} &amp; \\frac{x + z}{x + y - z}\n\\end{array}\\right)$</div>"}︡{"done":true}









