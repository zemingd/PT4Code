a, b = gets.split(' ').map{|i| i.to_i}
ans = 0

(a..b).each do |n|
  m = n.to_s
  ans += 1 if m == m.reverse
end

puts ans