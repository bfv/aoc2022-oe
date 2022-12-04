class day04.Assignment:

  define public property Low as int no-undo get. set.
  define public property High as int no-undo get. set.

  constructor Assignment(str as char):
    this-object:Low = int(entry(1, str, "-")).
    this-object:High = int(entry(2, str, "-")).
  end.
  
end class.