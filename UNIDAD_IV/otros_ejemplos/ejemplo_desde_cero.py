from pyswip import Prolog

interprete = Prolog()

interprete.query("assert(humano(adan))")
resultado = interprete.query("humano(adan)")

print("Si es humano...") if resultado else print("No es humano...")