(* Honor code comes here:

   First Name: Sabas
   Last Name:  Martinez
   CSU ID: 008037134

   I pledge that this program represents my own
   program code and that I have coded on my own. I received
   help from no one in designing and debugging my program.
   I have read the course syllabus of CSCI 315 and have read the sections on Collaboration
   and Academic Misconduct. Do not upload your solution on the public domain including GitHub.
   I also understand that I may be asked to meet the instructor for a follow up interview. 
   I may be asked to explain my solution in person and
   may also ask you to solve a related problem. *)

(* Important:
   * Do not delete function stubs for unfinished problems.
   * Do not change function signatures.
   * You may add or remove the 'rec' keyword as you see fit. *)

(* Problem 1.

   In this problem, you are to implement a tail-recursive function 'tetra' for computing the
   Tetranacci Sequence. The Tetranacci Sequence is a generalization of the Fibonacci Sequence,
   in particular it adds the previous 4 numbers to obtain the next number in the sequence.

   Examples:
   t0 = 0
   t1 = 1
   t2 = 1
   t3 = 2
   ...
   tk = tk-1 + tk-2 + tk-3 + tk-4 (for any k > 3)

   See https://mathworld.wolfram.com/TetranacciNumber.html for more details if necessary.

   Notes:
   * You may assume all inputs are non-negative integers.
   * Your 'tetra' function must return a result for large inputs such a 1000.
   * StackOverflow errors are not accepted.
   * IntegerOverflow is both accepted and expected. *)
let tetra (n : int) : int = 
  let rec tetraHelper (x:int) (y:int) (z:int) (n:int) (p:int) =
    match n with
      0 -> 0
    | 
      1 -> 1
    |
      2 -> 1
    |
      3 -> 2
    |
      _ -> let aux = fun x y z n p -> if n = p then
               (x + y + z + n)

      in tetraHelper 0 0


(* Problem 2.

   In this problem you are to implement the classical Euclidean algorithm for computing
   greatest common divisor. Your implementation of 'gcd' must be tail-recursive.

   Examples:
   gcd 7 81 = 1
   gcd 9 81 = 9
   gcd 141 36 = 3
   gcd 84 144 = 12
   gcd 315 441 = 63

   See https://en.wikipedia.org/wiki/Euclidean_algorithm for more details if necessary.

   Notes:
   * You may assume both inputs x and y are positive integers.
   * StackOverflow errors are not accepted. *)
let rec gcd (x : int) (y : int) : int = failwith "missing"

(* Problem 3.

   In this problem, you are to implement a 'sqrt' function that finds the square root
   of a given number.

   Examples:
   sqrt 100 = 10
   sqrt 81 = 9
   sqrt 144 = 12
   sqrt 15129 = 123

   Notes:
   * You may assume the inputs are non-negative integers.
   * You may assume there exists an integer square root to each input.
   * As a challenge, you can try the binary search method to find the square root (optional). *)
let sqrt (n : int) : int = failwith "missing"

(* Problem 4.

   In this problem, you are to implement an 'is_prime' to check for prime numbers. If an input
   x is prime, then return -1. Otherwise return the smallest factor of input x.

   Examples:
   is_prime 81 = 3
   is_prime 7 = -1
   is_prime 144 = 2
   is_prime 371 = 7
   is_prime 53 = -1

   Notes:
   * You may assume that inputs are non-negative integers.
   * You may return any value for inputs 0 and 1. *)
let is_prime (n : int) : int = failwith "missing"

(* Problem 5.

   In this problem, you are to implement a 'string_of_intlist' function to convert
   int lists to their string representations.

   Examples:
   string_of_intlist [] = "[]"
   string_of_intlist [1] = "[1]"
   string_of_intlist [1; 2] = "[1; 2]"
   string_of_intlist [1; 2; 3] = "[1; 2; 3]"
   string_of_intlist [1; 2; 3; 4] = "[1; 2; 3; 4]"

   Notes:
   * You may use the library function 'string_of_int' to convert int to string.
   * You may use the ^ operator to append strings.
   * You do not need to worry about spacing. *)
let string_of_intlist (ls : int list) : string = failwith "missing"

(* print_intlist can be used for testing the output of following problems. *)
let print_intlist (ls : int list) : unit = print_endline (string_of_intlist ls)

(* Problem 6.

   Implement a tail-recursive list reversal function 'rev'.

   Examples:
   rev [] = []
   rev [1] = [1]
   rev [1; 2] = [2; 1]
   rev [1; 2; 3; 4] = [4; 3; 2; 1]

   Notes:
   * Your implementation must be efficient for long lists.
   * StackOverflow errors are not accepted. *)
let rev (ls : int list) : int list = failwith "missing"

(* Problem 7.

   Implement a tail-recursive function 'length' for counting the number of elements
   in an int list.

   Examples:
   length [] = 0
   length [1] = 1
   length [1; 2] = 2
   length [1; 2; 3; 4] = 4

   Notes:
   * Your implementation must be efficient for long lists.
   * StackOverflow errors are not accepted. *)
let length (ls : int list) : int = failwith "missing"

(* Problem 8.

   Implement a prime factorization function 'factor'. Given an input n, return a list of
   all of its prime factors.

   Examples:
   factor 12 = [3; 2; 2]
   factor 71 = [71]
   factor 77 = [11; 7]
   factor 98 = [7; 7; 2]
   factor 100 = [5; 5; 2; 2]

   Notes:
   * The order of prime factors in the result does not matter.
*)
let factor (n : int) : int list = failwith "missing"

(* Problem 9.

   Implement a range function 'intlist_range' using tail recursion. 
   Given two integer inputs a and b, return a
   list of number between a and b (not including b).

   Examples:
   intlist_range 0 5 = [0; 1; 2; 3; 4]
   intlist_range 7 10 = [7; 8; 9]
   intlist_range 10 7 = []
   intlist_range (-3) 1 = [-3; -2; -1; 0]

   Notes:
   * If b < a, then return an empty list as the result. *)
let intlist_range (a : int) (b : int) : int list = failwith "missing"

(* Problem 10.

   You are to implement the dot product operation of linear algebra using tail-recursion.
   When given an int list xs and int list ys, the dot product is computed as follows.

   xs = [x1; x2; x3; ... xk]
   ys = [y1; y2; y3; ... yk]

   dot_product xs ys = (x1 * y1) + (x2 * y2) + (x3 * y3) + ... + (xk * yk)

   Notes:
   * You may assume inputs xs and ys are of the same length.
   * StackOverflow errors are not accepted. *)
let dot_product (xs : int list) (ys : int list) : int = failwith "missing"