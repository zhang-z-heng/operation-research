CPLEX 11.2.0: sensitivity 
presolve=0
CPLEX 11.2.0: optimal solution; objective 30153
15 dual simplex iterations (0 in phase I)

suffix up OUT;
suffix down OUT;
suffix current OUT;
x [*,*]
:       Ancona Bari Genova Napoli Venezia    :=
Lamezia     0     3     0     27      0
Perugia     0     0     7      0      5
Pescara    24     0     0      0      0
Roma        1     0    13      6      0
Taranto     0    18     0      0      0
Verona      0     0     0      0     10
;

domanda.slack [*] :=
 Ancona  0
   Bari  0
 Genova  0
 Napoli  0
Venezia  0
;

:               x[i,j].rc x[i,j].down x[i,j].current x[i,j].up    :=
Lamezia Ancona      310        437           747        1e+20
Lamezia Genova      415        657          1072        1e+20
Lamezia Venezia     480        617          1097        1e+20
Perugia Ancona        5        160           165        1e+20
Perugia Bari        554         56           610        1e+20
Perugia Napoli      285         95           380        1e+20
Pescara Bari        264         51           315        1e+20
Pescara Genova      280        375           655        1e+20
Pescara Napoli      150         90           240        1e+20
Pescara Venezia     115        335           450        1e+20
Roma    Bari        269        181           450        1e+20
Roma    Venezia      65        465           530        1e+20
Taranto Ancona      351        199           550        1e+20
Taranto Genova      591        419          1010        1e+20
Taranto Napoli      171        134           305        1e+20
Taranto Venezia     461        379           840        1e+20
Verona  Ancona      420        -65           355        1e+20
Verona  Bari        979       -169           810        1e+20
Verona  Genova      135        155           290        1e+20
Verona  Napoli      845       -130           715        1e+20
;

# $1 = disponibilita[i].slack
# $3 = disponibilita[i].down
# $4 = disponibilita[i].current
:         $1 disponibilita[i].dual   $3   $4 disponibilita[i].up    :=
Lamezia   10             0           30   40         1e+20
Perugia    0          -277            6   12            25
Pescara    0          -282           18   24            25
Roma       0          -152           14   20            47
Taranto    0          -238            8   18            21
Verona     0          -502            4   10            15
;

