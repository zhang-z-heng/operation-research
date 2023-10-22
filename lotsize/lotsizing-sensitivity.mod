# SETS

set J;

# PARAMS

param B;
param d{J};
param r{J};
param c{J};
param q{J};

# VARS

var x{J} >= 0;

# OBJECTIVE FUNCTION

maximize revenue: 
   sum {j in J} (r[j] - c[j]) * x[j];

# CONSTRAINTS

subject to demand{j in J}:
   x[j] <= d[j];

subject to production:
   sum {j in J} (x[j] / q[j]) <= B;
