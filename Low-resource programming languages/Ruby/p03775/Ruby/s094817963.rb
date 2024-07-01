n = gets.to_i
tmp = n.to_s.size
puts tmp
1.upto(n ** 0.5) do |a|
  b = n.to_f / a.to_f
  if b.to_s[-1] == "0"
    d = a.to_i.to_s.size > b.to_i.to_s.size ? a.to_i.to_s.size : b.to_i.to_s.size
    tmp = d if tmp > d
  end
end
puts tmp