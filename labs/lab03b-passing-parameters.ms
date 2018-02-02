.ds CH Lab #3b: Function parameters and returns
.so headings.ms
.TL
\*[CH]
.NH
Passing and returning values: 100 points, 90 minutes \fImaximum\fR
.time_box
.QP

.RS
.nr step 0 1
.IP \n+[step].
Create 2 files \fClab3b.h\fR and \fClab3b.cpp\fR.

Use \fClab3b.h\fR to store the declarations for all lab functions and 
\fClab3b.cpp\fR to store the function defintions.

For the remainder of this lab, the struct and all functions should be placd in the 
\*[c]namespace mesa\*[r].

.IP \n+[step].
Create a \*[c]struct\*[r] named \fCtrigon\fR to hold the lengths of the sides of a 3 sided polygon:
.CW
  struct trigon {
    float a;
    float b;
    float c;
  };
.R

Write a function \fCmake_triple\fR that takes two \*[c]const uint16_t\*[r] and
returns a \fCtrigon\fR that is a Pythagorean triple using Euclid's formula.

Given two parameters \fCm\fR and \fCn\fR, when \fCm\fR > \fCn\fR, the following:
.EQ
  a = m sup 2 - n sup 2
  b = 2mn
  c = m sup 2 + n sup 2
.EN

create a Pythagorean right triangle.

If parameter \fCm\fR is less than \fCn\fR the resultant trigon should equal \fC{0,0,0}\fR.

.IP \n+[step].
Write a function \fCscale\fR that takes a \fCtrigon\fR reference and a \*[c]float\*[r] factor and
increases or decreases the size of the trigon.
Values > 1.0 should make the trigon sides longer.
Values < 1.0 should make the trigon sides shorter.

The function should not modify the trigon if the scale factor is < 0.01.

.IP \n+[step].
Write a function \fCarea\fR that takes a constant \fCtrigon\fR reference and
computes the area of the trigon.

To compute the area, first compute the semi-perimeter:
.EQ
  s = {a + b + c} over 2
.EN

Compute the area using the semi-perimeter:
.EQ
  a = sqrt{s {s-a} * {s-b} * {s-c}} over 2
.EN

If any side of the \fCtrigon\fR is 0, then return 0 for the area.

.IP \n+[step].
Write a function \fCsmallest\fR that takes a constant \*[c]vector<trigon>\*[r] reference and
returns the \fCtrigon\fR with the smallest area.

.IP \n+[step].
Write a function that takes a \*[c]vector<string>\*[r] and returns 
the first \*[c]string\*[r] in the \*[c]vector\*[r],
where 'first' is determined by their alphabetically sorted position.
Accomplish this \fIwithout\fR sorting the vector.

Given the following word list:
.CW
    "reach", "clear", "fall", "set", "yard",
    "liquid", "wise", "badge", "four", "coherent"
.R

The function should return:
.CW
    badge
.R

.RE

Check your progress using the \*[c]check187\*[r] script:
.CW
    check187 lab3b
.R

Turn in your completed lab using the \*[c]submit187\*[r] script:
.CW
    submit187 lab3b
.R
