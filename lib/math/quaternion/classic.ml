include Quaternion__Share

module Make (N : Number.S) = struct
  open N

  module Prop = struct
    let mag : N.t q -> N.t =
     fun {w = a; x = b; y = c; z = d} ->
      sqrt ((a * a) + (b * b) + (c * c) + (d * d))
  end

  include Make_01 (N) (Prop)

  let mul : t -> t -> t =
   fun {w = a; x = b; y = c; z = d} {w = e; x = f; y = g; z = h} ->
    { w = (a * e) - (b * f) - (c * g) - (d * h)
    ; x = (b * e) + (a * f) - (d * g) + (c * h)
    ; y = (c * e) + (a * g) + (d * f) - (b * h)
    ; z = (d * e) - (c * f) + (b * g) + (a * h) }
end
