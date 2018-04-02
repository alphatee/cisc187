.ds CH Lab #9b: Exploring Iterators
.so headings.ms
.TL
\*[CH]
.LP
The goal of today's lab is to practice working with more advanced iterator operations.
.h2 Restrictions
.RS
.IP \(bu
Do not use any STL algorithms in this lab!
.RE
.NH
Iterators: 100 points, 90 minutes \fImaximum\fR
.time_box
.QP
.RS
.nr step 0 1
.IP \n+[step].
Create the files \fClab9b.h\fR and \fCmain.cpp\fR.

File \fCmain.cpp\fR is just for extra credit, if you choose.

In the steps that follow, place all code in the \*[c]mesa\*[r] namespace.
.IP \n+[step].
Write a function template that appends values.
.CW
  \m[green]
  // Add the given value to the first count elements in the range beginning at first,
  // if count > 0.
  // 
  // If count == 0, then nothing is done.\m[]
  template<class OutputIterator, class T>
  void fill_n(OutputIterator first, std::size_t count, T value);
.R

.IP \n+[step].
Write a function template that appends count copies of a value to a container.
.br
Use this signature:
.CW
  template<class Container, class T>
  void append_n(Container* c, std::size_t count, const T value);
.R

Note that the first parameter is a (non-owning) pointer to the container.

This function should call \*[c]fill_n\*[r] and use 
\*[c]std::back_inserter\*[r] to append values.

.IP \n+[step].
Write a function template that copies values from a range to a destination range, 
if a condition is met.
.br
Use this signature:
.CW
  template<class InputIterator, class OutputIterator, class Predicate>
  void copy_if(InputIterator first, 
               InputIterator last, 
               OutputIterator dest, 
               Predicate p);
.R

The predicate function should evaluate the current input iterator value and return a \*[c]bool\*[r].

.IP \n+[step].
Write a function copies vector elements to an output stream
if the container elements meet a condition.
.br
Use this signature:
.CW
  void print_if(std::vector<int> source, std::ostream& dest, Predicate p);
.R

This function should call \*[c]copy_if\*[r] and use 
\*[c]std::ostream_iterator<int>\*[r] as the destination.


.RE


Check your progress using the \*[c]check187\*[r] script:
.CW
    check187 lab9b
.R

Turn in your completed lab using the \*[c]submit187\*[r] script:
.CW
    submit187 lab9b
.R

.NH
Extra credit
.QP
.RS
.nr step 0 1
.IP \n+[step].
Implement a main that uses the function templates implemented in this lab.
.RE
