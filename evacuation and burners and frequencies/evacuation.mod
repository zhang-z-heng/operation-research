# SETS

set V;
set T within V;
set E within {V,V};
set A within {V,V} :=
   E union setof{(i,j) in E} (j,i);

# PARAMS

param s symbolic in T;
param c{(i,j) in A} >= 0, default if (j,i) in E then c[j,i];
param b{h in V} = 
   (if h = s then card(T)-1
    else if h in T then -1
    else 0);


var x{(i,j) in A}>=0;

minimize length: sum{(i,j) in A}c[i,j]*x[i,j];

s.t. balance{h in V}:
   sum{(h,j) in A} x[h,j] - sum{(i,h) in A} x[i,h] = b[h];
