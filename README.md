# Dart-Fundamentals

Assignment 1
As per session 1 (Dart Fundamentals)

1. Create a class named “Parent”. Create a private List of integers named “numbers”
and populate it. Create a private Map named “info” and populate it. Make both the list
and map private variables. Create 2 functions and make one of them return the list of
odd numbers from the numbers list and make the other function return the value of a
specific key passed via the parameter.
[Hint: List<int> numbers(); dynamic info(String key);]
2. Create a class named “Child”. Create a void function that takes another function as
parameter and prints the return value of that function.
3. Make “Child” inherit “Parent”. [Hint: Child extends Parent]
4. Create an instance of Child class in the main function and call the functions of Parent
class through it and print the results. Also call the function in the Child class and pass an
anonymous arrow function as argument. [Hint: child.x(() => ..... );]
--------------------------------------------------------------------------------------------------
# After do the the code , open terminal and give this command - 

dart run main.dart
--------------------------------------------------------------
It will take user inputs: 
name, age, Are you a student?,your major, numbers 

After taking the user input it will show the output . 
------------------------------------------------------------------
This is the OUTPUT:

Enter your name: Israth 
Enter your age: 22
Are you a student?: yes
Enter your major  : CSE
Enter numbers: 3 9 5 3 10 7 9 13
All numbers      : [3, 9, 5, 3, 10, 7, 9, 13]
Odd numbers only : [3, 9, 5, 3, 7, 9, 13]

Name     : Israth 
Age      : 22
Student? : true
Major    : CSE
GPA      : Not found!

Result:
  Hello, Israth !
  Odd numbers: [3, 9, 5, 3, 7, 9, 13]
  Sum of odd numbers: 49
