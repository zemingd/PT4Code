n = gets.to_i
l = gets.split(" ").map(&:to_i)
c = 0
d = 0
while c < l.length do
  if l[c] != c + 1 then
    l.delete_at(c)
    d += 1
  else
    c += 1
  end
end

if d == n then
  print "-1"
else
  print d
end
