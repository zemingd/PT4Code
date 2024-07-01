A, B = gets.split.map(&:to_i)
ps = []
(A..B).each do |num|
  ps << num if num.to_s == num.to_s.reverse
end
puts ps.count
