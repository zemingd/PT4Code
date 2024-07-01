A, B, C = gets.chomp.split.map(&:to_i)
ans = 0
(1..C).each do |i|
  ans += 1 if B - A * i >= 0
end
puts ans