#Spark! OCaml Micro-challenge!

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
1) **sqrt {sqrt (x: int) : int option} or {let sqrt (x: int) : int}** -> write a function sqrt that finds the square root of an integer, x, \n
   without using any built in square root function: \n
   • If the input is not a perfect square, then return the square root rounded down (i.e, 63 → 7 because 7×7 = 49, 8×8 = 64 > 63 therefore return 7. \n
   • For a challenge: if the input is negative, return None. This means your output will be int option. The next few functions will be using this \n
     function as well, so you have to account for this \n
   • For an easier route, just return 0 if the input is negative \n
   ex : sqrt 63 = 7 or Some 7 \n
   ex : sqrt 100 = 10 or Some 10 \n
   ex : sqrt 0 = 0 or Some 0 \n
   ex : sqrt (-25) = 0 OR None \n
   
3) **pythagorean {pythagorean (a:int) (b:int) : int option} or {pythagorean (a:int) (b:int) : int}** → write a function pythagorean,
   that uses the pythagorean theorem to find c. if a or b is less than 0, return 0 or None
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

## Step 3: leveltwo_listmatching
You will be writing four functions:
1) **listdilate {listdilate (lst: int list) (n: int) : int list}** ->
   given a list of integers lst, and an int n, return a new list where each element of lst is mulitpled by n
        ex : listdilate [1;2;3;4;5] 5 = [5;10;15;20;25]
          
3) **decode {decode (lst: int list) : char list}** -> given a list of integers lst, return a new list where each element of lst is converted into a char, where a=1
    b=2, c=3, d=4 . . . z=26. assume all values of lst are in range.
        ex : decode [19;16;1;18;11] = ['s';'p';'a';'r';'k']. 
   
4) **encode {encode (lst: char list) : int list}** -> given a list of characters lst, return a new list where each element of lst is converted into a integer, where 1=a
    2=b, 3=c, 4=d . . . 26=z. assume all values of lst are in range.
        ex : encode ['s';'p';'a';'r';'k'] = [19;16;1;18;11].
   
5) **createstring {createstring (lst: char list) : string}** -> given a list of characters lst, return a new string where the elements of lst are all combined.
        ex : createstring ['s';'p';'a';'r';'k'] = "spark"

## Step 3: Append some code to Message.java  
Append the following to your Message.java file:
`public static void tester(int[] test) { String testString = ""; for (int i = 0; i < test.length; i++) { testString += test[i]; } }`  
**Commit!**  

## Step 4: Create a branch  
Create a new branch called temp, and move into it. Use the command `git push --set-upstream origin temp` to ensure proper commits from here on; you could get an error otherwise.  

## Step 5: Create a "decode.java" file  
Create the file and append this code:
`public class decode {public static void main(String[] args) {}public static String decoder(int[] arr) {String result = ""; for (int i = 0; i < arr.length; i++) {result += String.valueOf( (char)arr[i] );}return result;}}`  
**Commit!**  
  
## Step 6: Create a file order.java  
Create the code and append this code:
`public class order { public static void main(String[] args) { } public static String asciiOrder(String phrase) { int[] arr = new int[phrase.length()];for (int i = 0; i < phrase.length(); i++) { arr[i] = (int) phrase.charAt(i); } 
Sort.selectionSort(arr); return decode.decoder(arr);} } `  
**Commit!**

## Step 7: Merge with main  
Let's merge the branch we're in, temp, with main. Make sure you move into the main branch first!
**Commit!**

## Step 8: Whoops! We have to remove one of our commits
We actually **didn't** have to append any code to Message.java in step 4 (I LIED TO YOU SO YOU CAN LEARN!!) so we want to remove this commit. Since we have been committing regularly, we can just remove that commit and revert to the version of Message.java before step 3. Make sure to follow the exact syntax above! In the file that opens when you run the command to delete a commit, delete the line that corresponds to the commit you’re trying to delete, save by clicking the three lines in the top left -> file -> save, and then close that file by hitting the ‘x’ on its tab. _(hint: if your log isn't long enough, press enter a few times; type q to exit the log)_  

## Step 9: Run our Message.java file!  
You can run directly in the codespace (not by using a command, but by clicking the pages icon (Explorer) on the left side, clicking the Message.java file, clicking the triangle (run and debug), and then green 'run and debug' button. It may prompt you to install an extension; install the first one it shows you, hit run again, and say yes to any prompts)
The output should appear in the terminal. You should get a link in return. Copy this into your browser and see where it takes you!
You should also see the String "Spark! Git Microchallenge" re-arranged in Ascii order!

# Need help?
Go to the Spark! Space and ask any student employee for a Learning Ambassador that can help with a micro-challenge! If you need help with step 8 & 9, check out this video -> https://drive.google.com/file/d/175K595HzhlMjifgqtVAvV84Bv2xHrCxV/view?usp=sharing )

