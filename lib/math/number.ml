module type S = sig
  type t

  val ( + ) : t -> t -> t
  val ( * ) : t -> t -> t
  val ( / ) : t -> t -> t
  val of_int : int -> t
end
