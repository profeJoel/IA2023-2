from pyswip import Prolog

interprete = Prolog()

interprete.consult("8_puzzle.pro")
solucion = interprete.query("puzzle(1/2/3/0/5/6/4/7/8)")

for paso in solucion:
    print(paso)