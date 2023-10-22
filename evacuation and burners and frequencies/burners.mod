# SETS

param m;
set I := 1..m;

param n;
set J := 1..n;

# PARAMS

param c{J};
param a{I,J};
param b{J};
param B;

# VARS

var x{J} binary;

# OBJECTIVE FUNCTION

maximize capacity:
   sum{j in J} b[j] * x[j];

# CONSTRAINTS

subject to packing{i in I}:
   sum{j in J} a[i,j] * x[j] <= 1;

subject to budget:
   sum{j in J} c[j] * x[j] <= B;
