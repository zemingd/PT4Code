w = gets.to_i

l = 100000
w.times do
  l = (l*1.05).to_i
  l2 = l / 1000 * 1000
  r = l - l2
  l = (r.zero?) ? l2 : l2 + 1000
end

puts l