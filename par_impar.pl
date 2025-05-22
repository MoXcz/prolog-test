% Hechos
impar(1).
impar(3).
impar(5).

par(2).
par(4).
par(6).

% Regla: si ambos son pares o ambos son impares, entonces la suma es par.
suma_par(X, Y) :-
    par(X), par(Y);
    impar(X), impar(Y).

