# SETS

set V;
set J;

# PARAMS

param coord1{V};
param coord2{V};
param d{i in V,i2 in V} := 
   sqrt((coord1[i]-coord1[i2])^2 + (coord2[i]-coord2[i2])^2);
param delta >=0;
param gamma >= 0;

# AUXILIARY SETS

set E := setof{i in V, i2 in V: i < i2 and d[i,i2] <= delta} (i,i2);
