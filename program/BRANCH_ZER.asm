LOAD r5, 255
LOAD r3, 102
WRITE r5, 8008
WRITE r3, 8000
LOAD r1, 102
LOAD r2, 102
SUBR r4, r1, r2
NOP
BRANCH 0003, ZER
WRITE r6, 0
WRITE r6 8000