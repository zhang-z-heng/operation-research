EVACUATION
For new year's eve, the police department of Milan expects a massive inflow of people to the Duomo Square around midnight.
Give a linear programming formulation for the problem of nding the shortest paths from Duomo to any of the selected stations, so as to be able to suggest to the police department
which routes will be, most likely, taken.
BURNERS
We are to choose the building site for a set of burners among 10 areas A1; : : : ; ;A10, which
are close to 7 cities B1; : : : ;B7. The following table contains the symbol \*" for each pair of
city and area that are considered to be 'close'. The second last line reports the capacity, in
tons/year, of each facility (which depends on the site where the facility is built). The last line
reports the building cost, in MEuro
A1 A2 A3 A4 A5 A6 A7 A8 A9 A10
B1 * * * * *
B2 * * * *
B3 * * *
B4 * * * * * * *
B5 * * * *
B6 * * *
B7 * * * * * *
Capacity 450 720 580 460 660 390 510 1000 830 680
Cost 4 7 8 4 6 9 10 10 8 6
Due to pollution reasons, no more than a burner can build close to each city.
1. Give an integer linear programming formulation for the problem of maximizing the total
capacity of the burners.
2. Give an integer linear programming formulation for the variant where the total building
cost must be nongreater than 10 MEuro.
Document
FREQUENCIES
A telecommunication company just installed ve antennas in the geographical area of interest,
as represented in the gure on the left. The Cartesian coordinates of each antenna are reported,
in kilometers, in the table on the right.
0 1 2 3 4 5
0
1
2
3
4
(x,y)
1 (0,0)
2 (1,1)
3 (2.5,3)
4 (4.1,2)
5 (1.6, 3.2)
Due to the agreement with the Local Telecommunication Authority, to each antenna the
company can assign a frequency centered in 1 KHz, 3 KHz, 5 KHz, 7 KHz, and 9 KHz.
We are to assign a frequency to each antenna so as to minimize the number of frequencies
that are used, guaranteeing that no interference occurs between any pair of antennas.
We consider two alternative models of interference.
1. Optimistic: antennas a1; a2 interfere if they have a Euclidean distance nonlarger than  =
3 Km and they use the same frequency.
2. Conservative: antennas a1; a2 interfere if they have a Euclidean distance nonlarger than
 = 3 Km and use two frequencies with centers at, respectively, j; j0 KHz, such that
jj 􀀀 j0j  
 = 2 KHz.
Give an integer linear programming formulation for the problem using each of the proposed
interference models.
Document
