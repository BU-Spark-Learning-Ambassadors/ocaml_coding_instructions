   (* 

   You have three types : Ambassador, Meeting_room, and Student.
   A student wants access to a meeting room.
     If the meeting room is booked, then there is a chance the ambassador that
     it's booked by will let the student use the room, based on a few conditions:
     - If the Ambassador is a Learning ambassador, then the room can -never- be given
   else:
     - If the student is friends with the ambassador who booked the room, they will let
       the student have the room
     - If the student is friends with at least 3 ambassadors, no matter who, they will
       let the student have the room
     
   write a function unbook, which takes in parameters
   (s : student) (roomlist : meeting_room list) 
   where roomlist has three meeting rooms a,b, and c and returns a tuple of three booleans, 
   for whether the student can have access to the list of meeting rooms
   i.e.,
     
let ambassador1 = Learning {name = "l_ambassador"}
let ambassador2 = Ignite {name = "i_ambassador"}
let s = {name = "lia"; friends = [ambassador2;ambassador1]}

let a = { booked = true; by = Some ambassador1 }
let b = { booked = true; by = Some ambassador2}
let c = { booked = false; by = None} 
        
let ans = unbook s [a;b;c] = (false, true, true)
  
*)

type ambassador = 
  |Learning of {name: string;}
  |Community of {name: string;}
  |Jedi of {name: string;}
  |Ignite of {name: string;} 

type meeting_room = { 
  booked : bool; 
  by : ambassador option;
} 
type student = { 
  name : string; 
  friends : ambassador list;
}



(* function *)       
let unbook (s : student) (roomlist : meeting_room list) : boolean * boolean * boolean = 





(* test *)
let ambassador1 = Learning {name = "l_amb"}
let ambassador2 = Ignite {name = "i_amb"}
let s1 = {name = "Lia"; friends = [ambassador2;ambassador1]}
let a1 = { booked = true; by = Some ambassador1 }
let b1 = { booked = true; by = Some ambassador2}
let c1 = { booked = false; by = None}

let ambassador3 = Jedi {name = "j_amb"}
let ambassador4 = Hackathon {name = "h_amb"}
let ambassador5 = Community {name = "c_amb"}
let s2 = {name = "Aaron"; friends = [ambassador1;ambassador2;ambassador3;ambassador4]}
let a2 = {booked = false; by = None}
let b2 = {booked = true; by = Some ambassador1}
let c2 = {booked = true; by = Some ambassador5}

let ans1 = (unbook s1 [a1;b1;c1] = (false, true, true))
let ans2 = (unbook s2 [a2;b2;c2] = (true, false, true))
