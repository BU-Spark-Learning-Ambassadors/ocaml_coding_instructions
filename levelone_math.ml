(* write a function sqrt that finds the square root of an integer x *)
(* If the input is not a perfect square, then return the square root rounded down *)
(* Hint: use a nested recursive helper! *)
let sqrt (x : int) : (*put int or int option here*) = 

(* write a function pythagorean, that uses the pythagorean theorem to find c *)
(* The pythagorean theorem is defined by a² + b² = c² *)
(* Use the sqrt function you just wrote! this means your outputs will be slightly inaccurate *)
let pythagorean (a : int) (b : int) : (*put int or int option here*) =

(* write a function quad that takes in three integer parameter a, b, and c, and returns a tuple of the result of applying the quadratic formula *)
(* for guidance on the quadratic formula, go here → https://en.wikipedia.org/wiki/Quadratic_formula *)
(* use the sqrt function you wrote! this means its not going to be perfctly accurate *)
let quad (a : int) (b : int) (c : int) : (*put int option * int option or int * int here*) =






(*tests for int option*)
(*copy this block into toplevel*)
(*
sqrt 63 = Some 7;;
sqrt 100 = Some 10;;
sqrt 0 = Some 0;;
sqrt (-25) = None;;

pythagorean 4 5 = Some 6;;
pythagorean -1 8 = None;;
pythagorean 0 5 = Some 5;;
pythagorean 10 20 = Some 22;;

quad 1 4 4 = (Some (-2), Some (-2));;
quad 1 0 (-4) = (Some 2, Some (-2));;
quad 8 1 1 =(None, None);;
*)
(* quad 0 1 1 should result in Exception: Division_by_zero *)


(*tests for int*) 
(*copy this block into toplevel*)
(*
let sqrt 63 = 7;;
let sqrt 100 = 10;;
let sqrt 0 = 0 ;;
let sqrt (-25) = 0;;

let pythagorean 4 5 = 6 ;;
let pythagorean -1 8 = 0;;
let pythagorean 0 5 = 5;;
let pythagorean 10 20 = 22;;

let quad 1 4 4 = (-2, -2) ;;
let quad 1 0 (-4) = (-2, 2);;
let quad 8 1 1 = (0,0);;
)*
(* quad 0 1 1 should result in Exception: Division_by_zero *)

