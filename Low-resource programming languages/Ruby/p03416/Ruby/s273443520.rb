A, B = gets.split.map(&:to_i)
count = 0
(A..B).each do |number|
  s = number.to_s
  count += 1 if s == s.reverse
end
puts count