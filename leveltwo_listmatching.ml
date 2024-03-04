(* Complete these four functions
if you need recursion, create a nested recursive function and don't change the actual header
i.e.,
let fac n =
 let rec helper n =
   if n = 1 then 1 else
   n * helper (n-1)
 in
 helper n
 *)
     



(* listdilate -> given a list of integers lst, and an int n, return a new list where each element of lst is mulitpled by n
  ex : listdilate [1;2;3;4;5] 5 = [5;10;15;20;25] *)
let listdilate (lst: int list) (n: int) : int list =


(* decode -> given a list of integers lst, return a new list where each element of lst is converted into a char, where a=1
   b=2, c=3, d=4 . . . z=26. assume all values of lst are in range. 
   ex : decode [19;16;1;18;11] = ['s';'p';'a';'r';'k']. *)
let decode (lst: int list) : char list =

    
(* encode -> given a list of characters lst, return a new list where each element of lst is converted into a integer, where 1=a
   2=b, 3=c, 4=d . . . 26=z. assume all values of lst are in range.
   ex : encode ['s';'p';'a';'r';'k'] = [19;16;1;18;11] *)
let encode (lst: char list) : int list =

(* createstring -> given a list of characters lst, return a new string where the elements of lst are all combined.
   ex : createstring ['s';'p';'a';'r';'k'] = "spark" *)
let createstring (lst: char list) : string =





(* TESTS! copy these lines into top level *)
(*

listdilate [1;2;3;4;5] 5 = [5;10;15;20;25] ;; 
decode [19;16;1;18;11] = ['s';'p';'a';'r';'k'] ;;
encode ['s';'p';'a';'r';'k'] = [19;16;1;18;11] ;;
createstring ['s';'p';'a';'r';'k'] = "spark" ;;

*)
