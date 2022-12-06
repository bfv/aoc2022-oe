var longchar signal.
var int a, b, pos.

copy-lob file "day06/input.txt" to signal.

function getUnique returns char (s as longchar):
  var int i.
  var char c, u.
  do i = 1 to length(s):
    c = substring(s, i, 1).
    if index(u, c) = 0 then u += c.
  end.
  return u.
end function.

function allUnique returns logical (pos as int, size as int):
  if (pos < size) then return false.
  return length(getUnique(substring(signal, pos - size + 1, size))) = size.
end function.

do pos = 4 to length(signal):
  if (a = 0 and allUnique(pos, 4)) then a = pos.
  if (b = 0 and allUnique(pos, 14)) then b = pos.
end.

message substitute("day06, a: &1, b: &2", a, b) view-as alert-box.
