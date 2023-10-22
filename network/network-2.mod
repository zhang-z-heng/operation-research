# SETS

set V;
set E within {V,V};
set A within {V,V} :=
   E union setof{(i,j) in E} (j,i);
set D;

# PARAMS

param s{D} symbolic in V;
param t{D} symbolic in V;
param k{(i,j) in A} >= 0, default if (j,i) in E then k[j,i];

# VARS

var x{(i,j,d) in {A,D}} >= 0, integer;
var phi{D} >= 0;

# OBJECTIVE FUNCTION

maximize value: 	
   sum{d in D} phi[d];

# CONSTRAINTS

subject to balance_s{d in D}:
   sum{(s[d],j) in A} x[s[d],j,d] - sum{(j,s[d]) in A} x[j,s[d],d] = phi[d];

subject to balance_t{d in D}:
   sum{(t[d],j) in A} x[t[d],j,d] - sum{(j,t[d]) in A} x[j,t[d],d] = -phi[d];

subject to balance{h in V, d in D: h <> s[d] and h <> t[d]}:
   sum{(h,j) in A} x[h,j,d] - sum{(i,h) in A} x[i,h,d] = 0;

subject to capacity{(i,j) in A}:
   sum{d in D} x[i,j,d] <= k[i,j];

