# Spark! OCaml Micro-challenge!

## What is a micro-challange?
A micro-challenge is a task/challenge that is a small project of code that can be done in a certain amount of time. It can be any idea that comes to mind but has to specifically be innovative and promote learning in any way. It is important that the micro challenges have different difficulty levels because some people might be more experienced than others so there has to be variety in that way. Most challenges should be able to be completed within a couple of hours to 2 days.

## Difficulty: ★★☆

## What you will be doing: 
You will be writing functions in OCaml using basic operations, pattern matching, and types.

## How you will be doing it:
You can use https://try.ocamlpro.com, a browser IDE for OCaml. If you have another IDE, such as VSCode, already set up for OCaml, you can copy your files there or you can clone the repo. You can also use github codespaces. It's up to you!

## Duration:
If you are already well versed in OCaml, an hour or less. If you are still learning, it will take longer.

# Instructions
  
## Step 0: Set up your workspace  
Whether your using a browser or an IDE, get everything ready to start coding!
  
## Step 1: levelone_math
You will be writing three functions:
1) **sqrt {sqrt (x: int) : int option} or {let sqrt (x: int) : int}** -> write a function sqrt that finds the square root of an integer, x, without using any built in square root function:  
 • If the input is not a perfect square, then return the square root rounded down (i.e, 63 → 7 because 7×7 = 49, 8×8 = 64 > 63 therefore return 7.  
 • For a challenge: if the input is negative, return None. This means your output will be int option. The next few functions will be using this function as well, so you have to account for this  
 • For an easier route, just return 0 if the input is negative  
   ex : sqrt 63 = 7 or Some 7  
   ex : sqrt 100 = 10 or Some 10  
   ex : sqrt 0 = 0 or Some 0  
   ex : sqrt (-25) = 0 OR None  
   
3) **pythagorean {pythagorean (a:int) (b:int) : int option} or {pythagorean (a:int) (b:int) : int}** → write a function pythagorean, that uses the pythagorean theorem to find c. if a or b is less than 0, return 0 or None  
 • The pythagorean theorem is defined by a² + b² = c²  
 • Use the sqrt function you just wrote! this means your outputs will be slightly inaccurate.  
   ex : pythagorean 4 5 = 6 or Some 6  
   ex : pythagorean 6 8 = 10 or Some 10  
   ex : pythagorean 0 5 = 0 or None  
   ex : pythagorean 10 20 = 22 or Some 22  

5) **quad {quad (a : int) (b : int) (c : int) : int option * int option} or {quad (a : int) (b : int) (c : int) : int * int}** →  
   write a function quad that takes in three integer parameter a, b, and c, and returns a tuple of the result of applying the quadratic formula:  
 • for guidance on the quadratic formula, go here → https://en.wikipedia.org/wiki/Quadratic_formula  
 • Use the sqrt function you just wrote! this means your outputs will be slightly inaccurate.  
   ex : quad 1 4 4 = (-2, -2) or (Some 2, Some -2)  
   ex : quad 1 0 (-4) = (-2, 2) or (Some 2, Some -2)  
   ex : quad 8 1 1 = (0,0) or (None, None)  
   ex : quad 0 1 1 = Exception: Division_by_zero  

## Step 2: leveltwo_listmatching  
You will be writing four functions:  
1) **listdilate {listdilate (lst: int list) (n: int) : int list}** ->  
   given a list of integers lst, and an int n, return a new list where each element of lst is mulitpled by n  
        ex : listdilate [1;2;3;4;5] 5 = [5;10;15;20;25]  
          
2) **decode {decode (lst: int list) : char list}** ->  
   given a list of integers lst, return a new list where each element of lst is converted into a char, where:  
   a=1 b=2, c=3, d=4 . . . z=26. assume all values of lst are in range.  
        ex : decode [19;16;1;18;11] = ['s';'p';'a';'r';'k'].   
   
3) **encode {encode (lst: char list) : int list}** ->  
   given a list of characters lst, return a new list where each element of lst is converted into a integer, where:  
   1=a 2=b, 3=c, 4=d . . . 26=z. assume all values of lst are in range.  
        ex : encode ['s';'p';'a';'r';'k'] = [19;16;1;18;11].  
   
4) **createstring {createstring (lst: char list) : string}** ->  
   given a list of characters lst, return a new string where the elements of lst are all combined.  
        ex : createstring ['s';'p';'a';'r';'k'] = "spark"  

## Step 3: levelthree_types  
You have three types : Ambassador, Meeting_room, and Student.  
A student wants access to a meeting room.  
If the meeting room is booked, then there is a chance the ambassador that it's booked by will let the student use the room, based on a few conditions:
 a) If the Ambassador is a Learning ambassador, then the room can never be given  
 else:  
 b) If the student is friends with the ambassador who booked the room, they will let the student have the room.  
 c) If the student is friends with at least 3 ambassadors, no matter who, they will let the student have the room  
     
Write a function unbook, which takes in parameters (s : student) (roomlist : meeting_room list) where roomlist has three meeting rooms a,b, and c and returns a tuple of three booleans, for whether the student can have access to the list of meeting rooms.   


## Step 4: Test your functions! 
For levelone_math and leveltwo_listmatching, there are commented out blocks of code that you can copy into the toplevel. Each statement should evaluate to true. In levelthree_types, the test is already written into the file, and both tests should evaluate to true when you run the file.

# Need help?
Go to the Spark! Space and ask any student employee for a Learning Ambassador that can help with a micro-challenge!



