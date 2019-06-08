module Make (N : Number.S) = struct
  open N

  let fold2 x y = ((x + y + of_int 1) * (x + y) / of_int 2) + x

  let fold3 x y z =
    ((x + y + z + of_int 2) * (x + y + z + of_int 1) * (x + y + z) / of_int 6)
    + fold2 x y

  let fold4 x y z w =
    (x + y + z + w + of_int 3)
    * (x + y + z + w + of_int 2)
    * (x + y + z + w + of_int 1)
    * (x + y + z + w)
    / of_int 24
    + fold3 x y z
end
