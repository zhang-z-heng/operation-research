# SETS

param m;
set I := 1..m; #cities

param n;
set J := 1..n; #areas

# PARAMS

param c{J};
param a{I,J};
param b{J};
param Q;


#VARIABLES
var x{J} binary;

#OBJECTIVE FUNCTION

minimize cost: sum{j in J}c[j]*x[j];


#CONSTrAINTS

s.t. covering{i in I}:
   sum{j in J}a[i,j]*x[j] >= 1;

s.t. partitioning{i in I}:
   sum{j in J}a[i,j]*x[j] == 1;

s.t. quantity:
   sum{j in J}b[j]*x[j] >= Q;




















