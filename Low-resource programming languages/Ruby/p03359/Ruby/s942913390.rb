A, B = gets.split.map(&:to_i)
n = A * 100 + B
ans = (1..12).count do |m|
  n >= m * 100 + m
end
puts ans
