(**************************************************************************)
(*                                                                        *)
(*   Typerex Libraries                                                    *)
(*                                                                        *)
(*   Copyright 2011-2017 OCamlPro SAS                                     *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

module Make(M : sig
    type path

    val mkdir : path -> int -> unit
    val stat : path -> MinUnix.stats
    val lstat : path -> MinUnix.stats
    val readdir : path -> string array
    val rmdir : path -> unit

    val remove : path -> unit

    val basename : path -> string
    val dirname : path -> path
    val add_basename : path -> string -> path

    val to_string : path -> string
  end) : FileSig.DIRECTORY_OPERATIONS with type t := M.path
