n = gets.to_i
pn = gets.split.map(&:to_i)

count = 0
(n-2).times do |i|
  l = pn[i..(i+2)]
  count += 1 if l[1] == l.sort[1]
end

p count