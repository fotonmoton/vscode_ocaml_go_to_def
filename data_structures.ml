
let () = print_endline "works"

(* stdlib Make is a functor that returns another module with concrete "key" type *)
module StringMap = Map.Make(String)

let empty = StringMap.empty

let withItem = StringMap.add "string to int" 1 empty

let anotherItem = StringMap.add "str" 3 withItem

let () =
  StringMap.iter
    (fun str num -> Printf.printf "%s %d\n" str num)
    anotherItem

open Base

let empty = Map.empty (module String)

let withItem = Map.add empty ~key:"string to int" ~data:1

(* let anotherItem = Map.add withItem ~key:"str" ~data:3 *)
