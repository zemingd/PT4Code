n = gets.to_i
t, a = gets.split(' ').map(&:to_i)
h = n.times.map{gets.to_i}

ans = h.map do |i|

 i = (t - i * 0.006).abs
end

puts ans.min