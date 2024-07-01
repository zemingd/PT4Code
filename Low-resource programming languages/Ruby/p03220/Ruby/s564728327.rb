n = gets.to_i
t, a = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)

ans = h.map do |i|

(t - i * 0.006).abs

end

puts ans.index(ans.min) + 1