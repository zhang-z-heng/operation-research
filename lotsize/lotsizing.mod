# SETS

set I;
param n;
set J := 1..n;

# PARAMS

param b{J};
param d{I,J};
param r{I};
param c{I};
param q{I};
param f{I};
param l{I};
param m{I};
param K;


#VARIABLES
var x{I,J} >= 0 integer;
var z{I, J union {0}} >= 0;
var v{I,J} >= 0;

#OBJECTIVE FUNCTION
maximize revenue: 
   sum{i in I, j in J} (r[i] * v[i,j] - c[i]*x[i,j] - m[i]*z[i,j]);

#CONSTRAINTS

s.t. demand{i in I, j in J}:
   v[i,j] <= d[i,j];

s.t. balance{i in I, j in J}:
   z[i,j-1] + x[i,j] = z[i,j] + v[i,j];

s.t. init{i in I}:
   z[i,0] = 0;

s.t. production{j in J}:
   sum{i in I}(x[i,j]/q[i]) <= b[j];

s.t. capacity{j in J}:
   sum{i in I}(z[i,j]) <= K;



