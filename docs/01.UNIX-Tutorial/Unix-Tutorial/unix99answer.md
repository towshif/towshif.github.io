# 7. Answers

==========

3.4 Using Pipes
---------------

### Exercise 3b

a2ps -Phockney textfile is the command to print a postscript file to the
printer hockney.

Using pipes, print all lines of **list1** and **list2** containing the
letter 'p', sort the result, and print to the printer hockney.

 

### Answer

    cat list1 list2 | grep p | sort | a2ps -Phockney

 

M.Stonebank@ee.surrey.ac.uk, © November, 2002
