n = gets.chomp.to_i
t,a = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

result = h.map do |i|
    (a - (t - (i * 0.006))).abs
end

puts (result.index(result.min) + 1)