︠414b4194-0741-4efa-8a9b-53ffa25698f9︠
#Provando Subespaço no R^2
V = VectorSpace(RR, 2)
a = vector([1, 0])
b = vector([5, 1])
c = vector([5, -1])
W = V.subspace([a, b, c])
show(W)
if W.is_subspace(V):
    print("W é um subespaço de V.")
else:
    print("W não é um subespaço de V.")
︡f090c931-e4fe-40b4-b565-1b664289cc60︡{"stdout":"W é um subespaço de V.\n"}︡{"done":true}
︠0afc2358-556f-49eb-bd53-41db9fcb5fed︠
#Provando Subespaço no R^3
V = VectorSpace(AA, 3)
a = vector([1, 0, 0])
b = vector([0, 1, 0])
c = vector([0, 0, 1])
W = V.subspace([a, b, c])
show(W)
if W.is_subspace(V):
    print("W é um subespaço de V.")
else:
    print("W não é um subespaço de V.")
︡60d5a3f5-56b5-455d-a790-baa132192549︡{"stdout":"W é um subespaço de V.\n"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\mathbf{A}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠d73ab19c-1a95-48f6-9aaf-d4df63de0cd7s︠
#Gerando base pro Subesapço Vetorial
V = VectorSpace(AA, 3)
a = vector([1, 0, 0])
b = vector([1, 1, 0])
c = vector([0, 0, 1])
ger = V.subspace_with_basis([a,b,c])
print("A base gerada pra esse subestaço vetorial é:")
show(ger)

︡6de3d93e-5f39-427d-a0a2-1fe7309036f9︡{"stdout":"A base gerada pra esse subestaço vetorial é:\n"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\mathbf{A}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n1 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠d14280fc-8f5d-45e3-a743-62836e90d063s︠
# Verificando se é L.I ou L.D
V = RR^3
a = vector([2, 3])
b = vector([2, 1])
#c = vector([1, 2, 1])
V.are_linearly_dependent([a,b])
if V.are_linearly_dependent([a,b]):
    print("É linearmente dependente")
else:
    print("É linearmente independente")
︡b6b24e90-755a-4902-8538-e73d0eb4517c︡{"stdout":"False\n"}︡{"stdout":"É linearmente independente\n"}︡{"done":true}
︠99950626-9a30-471e-94da-f5c754920b6ds︠
#Calculando Base e Dimensão
V = SR^3
a = vector([1, 0, 0])
b = vector([0, 1, 1])
c = vector([0, 1, 1])
W = V.subspace([a,b,c])
base = W.basis()
dim = W.dimension()
print("A base é", base, "A dimensão é", dim)
︡163ffd0e-8005-476f-a196-3b6c55cad28d︡{"stdout":"A base é [\n(1, 0, 0),\n(0, 1, 1)\n] A dimensão é 2\n"}︡{"done":true}
︠d4a2c7f6-39b7-4c5f-b617-3187a3b0a48a︠
#Soma Direta
V = VectorSpace(AA, 3)

# Definir os vetores a, b, c, d, e, f
a = vector([1, 0, 0])
b = vector([0, 1, 1])
c = vector([0, 0, 1])
d = vector([1, 0, 0])
e = vector([0, 1, 0])
f = vector([0, 0, 1])

U = V.subspace([a, b, c])
W = V.subspace([d, e, f])

soma = U + W
inter = U.intersection(W)
vazio = V.zero_vector()

show(soma)
if inter == vazio:
    print("É uma soma direta")
else:
    print("Não é uma soma direta")

︡7abe2fc8-ca78-471d-ab5b-91c6ebc95410︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\mathbf{A}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"stdout":"Não é uma soma direta\n"}︡{"done":true}
︠1b11ab71-4dc9-4a41-b41e-07667746346c︠










