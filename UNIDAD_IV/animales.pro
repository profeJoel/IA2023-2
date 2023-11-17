animal(elefante).
animal(caballo).
animal(burro).
animal(perro).
animal(mono).
animal(hormiga).

mas_grande(elefante,caballo).
mas_grande(caballo, burro).
mas_grande(burro, perro).
mas_grande(burro, mono).
mas_grande(mono, hormiga).
mas_grande(perro, hormiga).

% regla de transitividad : A -> B, B->C ; A->C
mas_grande(A,C) :- mas_grande(A,B), mas_grande(B,C).
mas_pequena(B,A) :- mas_grande(A,B).
