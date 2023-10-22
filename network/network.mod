# SETS

set V;
set E within {V,V};
set A within {V,V} :=
   E union setof{(i,j) in E} (j,i);

# PARAMS

param s symbolic in V;
param t symbolic in V;
param k{(i,j) in A} >= 0, default if (j,i) in E then k[j,i];

# VARS

var x{(i,j) in A} >= 0, <= k[i,j];
var phi >= 0;

# OBJECTIVE FUNCTION

maximize value: phi;

#CONSTRAINTS

subject to balance_s:
   sum{(s,j) in A} x[s,j] - sum{(j,s) in A} x[j,s] = phi;

subject to balance_t:
   sum{(t,j) in A} x[t,j] - sum{(j,t) in A} x[j,t] = -phi;

subject to balance{h in V: h <> s and h <> t}:
   sum{(h,j) in A} x[h,j] - sum{(i,h) in A} x[i,h] = 0;

