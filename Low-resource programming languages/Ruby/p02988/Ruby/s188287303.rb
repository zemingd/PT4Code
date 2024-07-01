n = gets.chomp.to_i
p = gets.split.map(&:to_i)
cnt = 0

(1..(n - 2)).each do |i|
  cnt += 1 if (p[i] > p[i - 1] && p[i] < p[i + 1]) || (p[i] < p[i - 1] && p[i] > p[i + 1] )
end
puts cnt