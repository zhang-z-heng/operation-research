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

# VARS

var x{I,J} >= 0, integer;
var v{I,J} >= 0;
var z{I,J union {0}} >= 0;
var y{I,J} binary;

# OBJECTIVE FUNCTION - FIXED COSTS

maximize revenue: 
   sum{i in I, j in J} (r[i] * v[i,j] - c[i] * x[i,j] - m[i] * z[i,j] - f[i] * y[i,j]);

# CONSTRAINTS

subject to demand{i in I, j in J}:
   v[i,j] <= d[i,j];

subject to production{j in J}:
   sum{i in I} (x[i,j] / q[i]) <= b[j];

subject to balance{i in I, j in J}:
   z[i,j-1] + x[i,j] = z[i,j] + v[i,j];

subject to capacity{j in J}:
   sum{i in I} z[i,j] <= K;

subject to init{i in I}:
   z[i,0] = 0;

# ADDITIONAL CONSTRAINTS

subject to activation{i in I, j in J}:
   x[i,j] <= b[j]*q[i]*y[i,j];

subject to lotsize{i in I, j in J}:
   x[i,j] >= l[i]*y[i,j];
