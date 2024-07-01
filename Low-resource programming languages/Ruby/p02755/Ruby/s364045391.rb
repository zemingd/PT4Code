A, B = gets.split.map(&:to_i)
ans = (0 .. 2000).find do |x|
  (A == x * 8 / 100) && (B == x * 10 / 100) 
end || -1
puts ans
