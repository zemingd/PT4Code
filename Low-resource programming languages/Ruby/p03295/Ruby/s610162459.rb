n, m = gets.split.map(&:to_i)
h={}
m.times do
  s, l = gets.split.map(&:to_i)
  h[s] = [h[s], l].compact.min
end
i = 0
while !h.empty? do
  j = h.keys.max
  h.select!{|_,v|v <= j}
  i += 1
end
puts i
