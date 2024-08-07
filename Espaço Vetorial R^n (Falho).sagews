︠0302ab68-cc50-47f9-ad02-83669db2136ds︠
n = 4
var_names = ['a'+str(i+1) for i in range(n)] + ['b'+str(i+1) for i in range(n)] + ['c'+str(i+1) for i in range(n)]
var(var_names)
a = SR.var('a')
b = SR.var('b')
c = SR.var('c')

V = VectorSpace(SR, n)
# Criando vetores simbólicos
u = V([var('a'+str(i+1)) for i in range(n)])
v = V([var('b'+str(i+2)) for i in range(n)])
w = V([var('c'+str(i+3)) for i in range(n)])

# Verificando as propriedades do espaço vetorial
# Propriedade 1: Adição é comutativa (u+v)
if u + v == v + u:
    comu = True
else:
    comu = False

# Propriedade 2: Adição é  (u+v+w)
if (u + v) + w == u + (v + w):
    asso = True
else:
    asso = False

# Propriedade 3: Existência do vetor nulo [0]
zero_vector = V([0]*n)
if u + zero_vector == u:
    nulo = True
else:
    nulo = False

# Propriedade 4: Existência do inverso aditivo (-u)
if u + (-u) == zero_vector:
    inver = True
else:
    inver = False

# Propriedade 5: Multiplicação por escalar é distributiva em relação à adição de vetores
if a * (u + v) == a * u + a * v and (a + b) * u == a * u + b * u:
    distri = True
else:
    distri = False

# Propriedade 6: Multiplicação por escalar é associativa
if (a * b) * u == a * (b * u):
    asso_escalar = True
else:
    asso_escalar = False

# Propriedade 7: Identidade multiplicativa para multiplicação por escalar
identity_scalar = 1
if identity_scalar * u == u:
    identid_multi = True
else:
    identid_multi = False

# Propriedade 8: Distributividade em relação à multiplicação por escalar
if (a + b) * u == a * u + b * u:
    distri_multi = True
else:
    distri_multi = False

# Propriedade 9: Distributividade do escalar em relação à adição de escalares
if a * (u + v) == a * u + a * v:
    distri_escalar = True
else:
    distri_escalar = False

# Propriedade 10: Escalar multiplicado por vetor é associativo
if a * (b * u) == (a * b) * u:
    asso_vetor = True
else:
    asso_vetor = False
ally = comu and asso and nulo and inver and distri and asso_escalar and identid_multi and distri_multi and distri_escalar and asso_vetor
show(ally)
# Verificando se todas as propriedades são válidas
if ally:
    print("É um espaço vetorial.")
else:
    print("Não é um espaço vetorial. Verifique qual propriedade deu erro.")
︡33a7795c-1258-483c-9548-80dba765db20︡{"stdout":"(a1, a2, a3, a4, b1, b2, b3, b4, c1, c2, c3, c4)\n"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{True}$</div>"}︡{"stdout":"É um espaço vetorial.\n"}︡{"done":true}
︠0bc75187-6235-4d72-8a83-7e811cbf4c9a︠
var('x1 y1 x2 y2 x3 y3 a b c d e f')


# Verificando se as condições extras são válidas
if condition1 and condition2:
    V = VectorSpace(SR, 2)

# Criando os vetores
u = V([x1+y1,2*y1])
v = V([x2+y2,3*y2])
w = V([x3+y3,4*y3])

# NAÕ MEXER!!!
"""
----------------------------------------------------------------------------------------------- """

# Verificando as propriedades do espaço vetorial

# Propriedade 1: Adição é comutativa (u+v)
if u + v == v + u:
    comu = True
else:
    comu = False

# Propriedade 2: Adição é associativa (u+v+w)
if (u + v) + w == u + (v + w):
    asso = True
else:
    asso = False

# Propriedade 3: Existência do vetor nulo [0]
zero_vector = V([0, 0])
if u + zero_vector == u:
    nulo = True
else:
    nulo = False

# Propriedade 4: Existência do inverso aditivo (-u)
if u + (-u) == zero_vector:
    inver = True
else:
    inver = False

# Propriedade 5: Multiplicação por escalar é distributiva em relação à adição de vetores
R = RealField()
a, b = var('a b', domain=R)

if a * (u + v) == a * u + a * v and (a + b) * u == a * u + b * u:
    distri = True
else:
    distri = False

# Propriedade 6: Multiplicação por escalar é associativa
if (a * b) * u == a * (b * u):
    asso_escalar = True
else:
    asso_escalar = False

# Propriedade 7: Identidade multiplicativa para multiplicação por escalar
identity_scalar = 1
if identity_scalar * u == u:
    identid_multi = True
else:
    identid_multi = False

# Propriedade 8: Distributividade em relação à multiplicação por escalar
if (a + b) * u == a * u + b * u:
    distri_multi = True
else:
    distri_multi = False

# Propriedade 9: Distributividade do escalar em relação à adição de escalares
if a * (u + v) == a * u + a * v:
    distri_escalar = True
else:
    distri_escalar = False

# Propriedade 10: Escalar multiplicado por vetor é associativo
if a * (b * u) == (a * b) * u:
    asso_vetor = True
else:
    asso_vetor = False

# Verificando se todas as propriedades são válidas
if comu and asso and nulo and inver and distri and asso_escalar and identid_multi and distri_multi and distri_escalar and asso_vetor:
    print("É um espaço vetorial.")
else:
    print("Não é um espaço vetorial. Verifique qual propriedade deu erro.")

︡4cddd675-1abd-430d-ae44-41bacac5f845︡{"stdout":"(x1, y1, x2, y2, x3, y3, a, b, c, d, e, f)\n"}︡{"stdout":"'\\n----------------------------------------------------------------------------------------------- '\n"}︡{"stdout":"É um espaço vetorial.\n"}︡{"done":true}
︠936681c7-7bae-495c-93d9-c2fdd736e4d8︠

︡f815f412-5a9f-4139-90b9-50fcb821f6f0︡
︠6288186b-0a12-4e63-aea8-a520e703d347︠
# Definindo variáveis
var('x1 y1 z1 x2 y2 z2 x3 y3 z3 a b c d e f g h j')
-----------------------------------------------------------------------------------------------
V = VectorSpace(SR, 3)
# Criando os vetores
u = V([a*x1, b*y1, c*z1])
v = V([d*x2, e*y2, f*z2])
w = V([g*x3, h*y3, j*z3])

"""
Substitua apenas as letras a b c d e f g h j

"""


# NAÕ MEXER!!!
-----------------------------------------------------------------------------------------------
# Verificando as propriedades do espaço vetorial


# Propriedade 1: Adição é comutativa (u+v)
if u + v == v + u:
    comu = True
else:
    comu = False

# Propriedade 2: Adição é associativa (u+v+w)
if (u + v) + w == u + (v + w):
    asso = True
else:
    asso = False

# Propriedade 3: Existência do vetor nulo [0]
zero_vector = V([0, 0, 0])
if u + zero_vector == u:
    nulo = True
else:
    nulo = False

# Propriedade 4: Existência do inverso aditivo (-u)
if u + (-u) == zero_vector:
    inver = True
else:
    inver = False

# Propriedade 5: Multiplicação por escalar é distributiva em relação à adição de vetores
a, b = var('a b')
if a * (u + v) == a * u + a * v and (a + b) * u == a * u + b * u:
    distri = True
else:
    distri = False

# Propriedade 6: Multiplicação por escalar é associativa
if (a * b) * u == a * (b * u):
    asso_escalar = True
else:
    asso_escalar = False

# Propriedade 7: Identidade multiplicativa para multiplicação por escalar
identity_scalar = 1
if identity_scalar * u == u:
    identid_multi = True
else:
    identid_multi = False

# Propriedade 8: Distributividade em relação à multiplicação por escalar
if (a + b) * u == a * u + b * u:
    distri_multi = True
else:
    distri_multi = False

# Propriedade 9: Distributividade do escalar em relação à adição de escalares
if a * (u + v) == a * u + a * v:
    distri_escalar = True
else:
    distri_escalar = False

# Propriedade 10: Escalar multiplicado por vetor é associativo
if a * (b * u) == (a * b) * u:
    asso_vetor = True
else:
    asso_vetor = False

# Verificando se todas as propriedades são válidas
if comu and asso and nulo and inver and distri and asso_escalar and identid_multi and distri_multi and distri_escalar and asso_vetor:
    print("É um espaço vetorial.")
else:
    print("Não é um espaço vetorial. Verifique qual propriedade deu erro.")
︡b4a1a369-f344-4bda-ad59-f93c699ab473︡{"stdout":"(x1, y1, z1, x2, y2, z2, x3, y3, z3, a, b, c, d, e, f, g, h, j)\n"}︡{"stdout":"É um espaço vetorial.\n"}︡{"done":true}
︠5112b7b3-a966-414c-9fee-47a3b29eabd8s︠
# Definindo variáveis simbólicas
var('x1 y1 z1 m1 x2 y2 z2 m2 x3 y3 z3 m3 a b c d e f g h j k l')

V = VectorSpace(SR, 4)
# Criando os vetores
u = V([*x1, *y1, *z1, *m1])
v = V([*x2, *y2, *z2, *m2])
w = V([*x3, *y3, *z3, *m3])

# Verificando as propriedades do espaço vetorial
# Propriedade 1: Adição é comutativa (u+v)
if u + v == v + u:
    comu = True
else:
    comu = False

# Propriedade 2: Adição é associativa (u+v+w)
if (u + v) + w == u + (v + w):
    asso = True
else:
    asso = False

# Propriedade 3: Existência do vetor nulo [0]
zero_vector = V([0, 0, 0, 0])
if u + zero_vector == u:
    nulo = True
else:
    nulo = False

# Propriedade 4: Existência do inverso aditivo (-u)
if u + (-u) == zero_vector:
    inver = True
else:
    inver = False

# Propriedade 5: Multiplicação por escalar é distributiva em relação à adição de vetores
h, k = var('a b')
if a * (u + v) == a * u + a * v and (a + b) * u == a * u + b * u:
    distri = True
else:
    distri = False

# Propriedade 6: Multiplicação por escalar é associativa
if (a * b) * u == a * (b * u):
    asso_escalar = True
else:
    asso_escalar = False

# Propriedade 7: Identidade multiplicativa para multiplicação por escalar
identity_scalar = 1
if identity_scalar * u == u:
    identid_multi = True
else:
    identid_multi = False

# Propriedade 8: Distributividade em relação à multiplicação por escalar
if (a + b) * u == a * u + b * u:
    distri_multi = True
else:
    distri_multi = False

# Propriedade 9: Distributividade do escalar em relação à adição de escalares
if a * (u + v) == a * u + a * v:
    distri_escalar = True
else:
    distri_escalar = False

# Propriedade 10: Escalar multiplicado por vetor é associativo
if a * (b * u) == (a * b) * u:
    asso_vetor = True
else:
    asso_vetor = False

# Verificando se todas as propriedades são válidas
if comu and asso and nulo and inver and distri and asso_escalar and identid_multi and distri_multi and distri_escalar and asso_vetor:
    print("É um espaço vetorial.")
else:
    print("Não é um espaço vetorial. Verifique qual propriedade deu erro.")
︡e78f574f-e3a7-49ed-8443-def5cb9cce14︡{"stdout":"(x1, y1, z1, m1, x2, y2, z2, m2, x3, y3, z3, m3, a, b, c, d, e, f, g, h, j, k, l)\n"}︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nTypeError: Value after * must be an iterable, not sage.symbolic.expression.Expression\n"}︡{"done":true}

























