# SETS

set I;

# PARAMS

param d >=0;
param d2 >=0;
param f{I};
param f2{I};
param c{I};
param k{I};
param k2{I};

# VARS

var x{I} >=0;
var x2{I} >=0;

var y{I} binary;
var y2{I} binary;
var z{I} binary;

# OBJECTIVE FUNCTION

minimize cost:   sum{i in I} (c[i] * (x[i] + x2[i]) + 
                  f[i] * (y[i] + z[i]) + f2[i] * (y2[i] + z[i]));

# CONSTRAINTS

subject to demand_day:
   sum{i in I} x[i] >= d;

subject to demand_night:
   sum{i in I} x2[i] >= d2;

subject to max_production_day{i in I}:
   x[i] <= k[i] * y[i] + k2[i] * z[i];

subject to max_production_night{i in I}:
   x2[i] <= k[i] * y2[i] + k2[i] * z[i];


subject to activation{i in I}:
   y[i] + y2[i] + z[i] <= 1;

