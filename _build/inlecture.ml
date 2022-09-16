(*let factotial = fun x ->
  let rec aux = fun accum x ->
    if x=1 then accum 
    else aux (accum*x) (x-1)
  in aux 1 x *)

(* let rec fact1 = fun x->
   if x =1 then 1 
   else x*fact1 (x-1)

   let _ = print_int (fact1 5) *)

let rec tetra = fun n ->
  match n with
    0 -> 0
  | 
    1 -> 1
  | 
    2 -> 1
  | 
    3 -> 2
  | 
    _ -> tetra(n-1) + tetra(n-2) + tetra(n-3) + tetra(n-4)
(* the function above calculates the tetranacci of a number, though it is effective it is very slow 
   after this comment we create a fucntion to calculate that but in a much faster iteration. *)

let rec tetra' = fun n -> 
  match n with
    0 -> 0
  |
    1 -> 1
  |
    2 -> 1
  | 
    3 -> 2 
  |
    _ -> let rec aux = fun a0 a1 a2 accum p ->
      if p = n then 
        (a0 + a1 + a2 + accum)
      else 
        aux a1 a2 accum (a0 + a1 + a2 + accum) (p + 1)
    in aux 0 1 1 2 4



let rec mergesort = fun l ->
  match l with
    [] -> []
  |
    [x] -> l 
  | 
    _ -> let split = fun l ->
      let rec aux = fun l left right ->
        match l with 
          [] -> (left, right)
        |
          h::t -> aux t right (h::left)
      in aux l [] []
    in 
    let (l,r) = split l
    in 
    let rec merge = fun l1 l2 -> 
      match l1, l2 with 
        [], [] -> []
      |
        h1::t1, [] -> l1
      |
        [], h2::t2 -> l2
      |
        h1::t1, h2::t2 -> if h1 < h2 then h1::(merge t1 l2) else h2::(merge l1 t2)
    in merge (mergesort l) (mergesort r)

(* mergesort [5;2;1;4;9;8;3;7;6];; *)