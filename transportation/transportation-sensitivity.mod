# SETS

set I;
set J;

# PARAMS

param b{I} >= 0;
param d{J} >= 0;
param c{I,J} >= 0;

# VARS

var x{I,J} >= 0;

# OBJECTIVE FUNCTION

minimize cost:
   sum{i in I, j in J} c[i,j] * x[i,j];

# CONSTRAINTS

subject to availability{i in I}:
   sum{j in J} x[i,j] <= b[i];

subject to demand{j in J}:
   sum{i in I} x[i,j] >= d[j];

