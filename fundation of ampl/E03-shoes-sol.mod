# SETS

param n;
set I := 1..n;

param m;
set J := 1..m;

# PARAMS

param t{I,J};
param p{J};
param q{J};
param T_min;
param T_max;

# VARS

var x{I,J} >= 0, integer;

# OBJECTIVE FUNCTION

maximize revenue:
   sum{i in I, j in J} p[j] * x[i,j];   

# CONSTRAINTS

subject to min_hours{i in I}:
   sum{j in J} t[i,j] * x[i,j] >= T_min;

subject to max_hours{i in I}:
  sum{j in J} t[i,j] * x[i,j] <= T_max;

subject to demand{j in J}:
  sum{i in I} x[i,j] <= q[j];
