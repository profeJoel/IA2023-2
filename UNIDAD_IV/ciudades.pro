ciudad(santiago).
ciudad(arica).
ciudad(puerto_montt).
ciudad(punta_arenas).

temp_f(santiago, 70).
temp_f(arica, 90).
temp_f(puerto_montt, 50).
temp_f(punta_arenas, 30).

% regla de conversion de valores
temp_c(CIUDAD, TEMP_C) :-
    temp_f(CIUDAD, TEMP_F),
    TEMP_C is (TEMP_F - 32) * 5/9.