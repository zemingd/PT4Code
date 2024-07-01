n = gets.to_i
w = gets.split.map(&:to_i)
result = (0..w.size-2).map do |t|
  s1 = w[0..t].reduce(:+)
  s2 = w[t+1..-1].reduce(:+)
  (s1-s2).abs
end.min
puts result

