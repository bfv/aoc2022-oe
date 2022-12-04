using day04.*.

var int a, b.
var char str.
var Assignment e1, e2.

input from day04/input.txt.

function isContained returns logical (a1 as Assignment, a2 as Assignment):
  return (a1:Low <= a2:Low and a1:High >= a2:High or a2:Low <= a1:Low and a2:High >= a1:High).  
end function.

function isOverlapping returns logical (a1 as Assignment, a2 as Assignment):
  return a1:Low >= a2:Low and a1:Low <= a2:High or
    a1:High >= a2:Low and a1:High <= a2:High or
    a1:Low <= a2:Low and a1:High >= a2:High.
end.

repeat:
  import unformatted str.
  e1 = new Assignment(entry(1, str)).
  e2 = new Assignment(entry(2, str)).
  if (isContained(e1, e2)) then a += 1.
  if (isOverlapping(e1, e2)) then b += 1.
end.

message substitute("day04, a: &1, b: &2", a, b) view-as alert-box.