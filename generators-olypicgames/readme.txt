GENERATORS
Consider a planning horizon of a single day for an energy plant with 3 available generators
and 2 time periods: day-time and night-time. We assume there is an energy demand of 4000
MWh during the day, and an energy demand of 2800 MWh at night.
The generators have a per-unit production cost and a xed activation cost for each period
where they are active. The night period has a larger cost, due to the higher salary of the
technicians that are required. The following table reports the activation costs, as well as the
production cost per MWh, for each generator.
day act. cost night act. cost cost per MWh
Generator A 800 1200 4
Generator B 700 1000 6
Generator C 900 1400 7
The generators can be operated in two modes: for only one period (either day-time or night-
time) or for a full day. Since a generator cannot be operated at maximum eciency for 24h, its
maximum production per period will be lower if it is active for the whole day. The next table
indicates the maximum energy that can be generated in each period if it is active only for one
period (half-day mode) or for the whole day (full-day mode).
Max production per period: half-day mode full-day mode
Generator A 2500 2000
Generator B 2000 1500
Generator C 3000 2500
Give an integer linear programming formulation for the problem of minimizing the total cost,
satisfying the energy demand.
Document
OLYPICGAMES
The students of the G. Galilei high school are enrolled in the June School Olympic Games.
The instructors are planning the event schedule.
In a time span of 10 days, the students will be involved in matches of 100, 200, and 1000
meters, cross country running, discus throw, javelin throw, football, and baseball. The games
will be played both in week days and week-end days.
The students have already enrolled for the sports they are interested in. Since some athlets
will play matches of dierent disciplines, the activities must be schedules so as to entirely avoid
overlaps.
The table reports, with an X, the pair of matches with at least one athlete in common. It
also indicates, for each discipline, the total number of matches to be played.
100 200 1000 cross country discus javelin football baseball
100 X X X
200 X X
1000 X X X
cross country X
discus X
javelin X
football X
baseball
Total Matches 2 2 2 1 3 3 4 4
For each match, the instructors estimated the 'degree of interest', which is shown in the table
100 200 1000 cross country discus javelin football baseball
Interest 7 8 10 4 5 6 10 9
The matches are played in sequence, during the rst 3 afternoon hours (180 minutes). For
each day, at most one match per discipline can be scheduled. The length, in minutes, of a match
of each discipline is reported in the table
100 200 1000 cross country discus javelin football baseball
Length 15 15 20 60 30 30 100 100
To exploit the enthusiasm of the athlets, the instructors decided that no more than 7 days
must pass from the rst and the last match of each discipline.
Given an integer linear programming formulation for the problem of determining a schedule
for the matches such that the interest of the less interesting day is maximized. Per day, the
interest amounts to the sum of the degree of interest of the matches that are played.
