(*
Honor code comes here:
First Name:
Last Name:
CSU ID:
I pledge that this program represents my own
program code and that I have coded on my own. I received
help from no one in designing and debugging my program.
I have read the course syllabus of CS 315 and have read the sections on 
Collaboration
and Academic Misconduct. I also understand that I may be asked to meet the 
instructor
for a follow up interview. I may be asked to explain my solution in person and
may also ask you to solve a related problem.
*)
(* 
a print_list function useful for debugging.
*)
let rec print_list (ls: int list): unit =
  let rec aux ls = match ls with
    | [] -> print_string ""
    | e::[] -> print_int e
    | e::l -> 
      let _ = print_int e 
      in let _ = print_string "; " 
      in aux l
  in let _ = print_string "[" 
  in let _ = aux ls
  in         print_string "]" 
(* Problems *)
(*
TODO: Write a function called between that lists the integers between two integers 
(inclusive)
If the first number is greater then the second return the empty list
the solution should be tail recursive
For example,
between 4 7 = [4; 5; 6; 7]
between 3 3 = [3]
between 10 2 = []
between 4 1000000 does not stack overflow
*)
(*let rec between (n:int) (e:int): int list =  (*not tail recursive*)
  if n > e then []
  else n::between (n+1) e
*)
let rec between (n:int) (e:int): int list = 
  let rec bet (n:int) (e:int) (nums: int list) = 
    if n > e then nums
    else bet n (e - 1) (e::nums)
  in bet n e []
(*
TODO: Write a zip function that takes two lists of integers and combines them into 
a list of pairs of ints
If the two input list are of unequal lengths, combine as long as possible
your method should be tail recursive.
For example,
zip_int [1;2;3;5] [6;7;8;9] = [(1,6);(2,7);(3,8);(5,9)]
zip_int [1] [2;4;6;8] = [(1,2)]
zip_int (between 0 1000000) (between 0 1000000) does not stack overflow
*)
let zip_int (a: int list) (b: int list): (int * int) list =
  let rec zip_help (a: int list) (b: int list) pair =
    match (a,b) with
      ([],_) -> pair
    | (_,[]) -> pair
    | (astart::ait, bstart::bit) -> zip_help ait bit (pair@[(astart, bstart)])
  in zip_help a b []

(*
TODO: Write a dotProduct function for lists of integers,
If the two list are of unequal lengths then return 0
For example,
dotProduct [1;2;3;4] [6;7;8;9] = 80            (since 1*6+2*7+3*8+4*9 = 80)
dotProduct [1;2;3;4] [6] = 0
*)

(* let rec dotProduct (x: int list) (y: int list): int = failwith "unimplemented" *)
let rec dotProduct (x: int list) (y: int list): int = 
  let rec dotProduct_help (x: int list) (y: int list) (accum: int) = 
    if (List.length x) = (List.length y) then accum
    else match (x,y) with
        ([],_)->0
      | (_,[])->0
      | (xstart::xit, ystart::yit)-> dotProduct_help xit yit ((xstart * ystart) + accum)
  in dotProduct_help x y 0