n = gets.to_i
l = gets.split(" ").map(&:to_i)
c = 0
d = 1
while c < l.length do
  if l[c..-1].include?(d)
    d += 1
    c += 1
  else
    c += 1
  end
end

if d == 1 then
  print "-1"
else
  print n-d+1
end
