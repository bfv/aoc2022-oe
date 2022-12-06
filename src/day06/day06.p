var longchar signal.
var int a, b, len, pos.

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
  var char rs.
  if (pos < size) then return false.
  rs = getUnique(substring(signal, pos - size + 1, size)).
  return length(rs) = size.
end function.

len = length(signal).
do pos = 4 to len:
  if (a = 0 and allUnique(pos, 4)) then a = pos.
  if (b = 0 and allUnique(pos, 14)) then b = pos.
  if (a > 0 and b > 0) then leave.
end.

message substitute("day06, a: &1, b: &2", a, b) view-as alert-box.
