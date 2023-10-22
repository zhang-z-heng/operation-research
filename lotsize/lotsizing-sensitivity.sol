CPLEX 11.2.0: sensitivity 
presolve=0
CPLEX 11.2.0: optimal solution; objective 536310
3 dual simplex iterations (1 in phase I)

suffix up OUT;
suffix down OUT;
suffix current OUT;
x [*] :=
A1  4300
A2  1755
A3  5225
;

produzione.dual = 21150
produzione.down = 18.1
produzione.current = 22
produzione.up = 28.1

# $4 = domanda[j].current
:  domanda[j].slack domanda[j].dual domanda[j].down    $4  domanda[j].up    :=
A1           0            3.7             1250        4300       6250
A2        2745            0               1755        4500      1e+20
A3           0           10.5455          1870        5225       7370
;

