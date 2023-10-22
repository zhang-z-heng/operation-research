# SETS

set I;

param G;
set J := 1..G;

# PARAMS

param T;
param n;
param c{I,I};
param m{I};
param w{I};
param t{I};

# VARS

var x{I,J} binary;
var eta >= 0;

# OBJECTIVE FUNCTION

maximize min_interest: 
   eta;

# CONSTRAINTS

subject to interest{j in J}:
   sum{i in I} x[i,j] * w[i] >= eta;

subject to conflicts{i in I, i2 in I, j in J: c[i,i2] = 1}:
   x[i,j] + x[i2, j] <= 1;

subject to number{i in I}:
   sum{j in J} x[i,j] = m[i];

subject to time{j in J}:
   sum{i in I} t[i] * x[i,j] <= T;

subject to limit{i in I, j in J, j2 in J: j - j2 > n}:
  x[i,j] + x[i,j2] <= 1;

