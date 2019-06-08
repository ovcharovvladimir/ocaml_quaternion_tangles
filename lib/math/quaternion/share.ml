(* subdirs: no alias *)

type 'a t =
  { w : 'a
  ; x : 'a
  ; y : 'a
  ; z : 'a }

type 'a q = 'a t

module Make_01
    (N : Number.S) (Q : sig
        val mag : N.t q -> N.t
    end) =
struct
  open N

  type t = N.t q

  include Q

  let norm : t -> t =
   fun ({w = a; x = b; y = c; z = d} as q) ->
    let m = mag q in
    {w = a / m; x = b / m; y = c / m; z = d / m}

  let add : t -> t -> t =
   fun {w = a; x = b; y = c; z = d} {w = e; x = f; y = g; z = h} ->
    {w = a + e; x = b + f; y = c + g; z = d + h}
end
