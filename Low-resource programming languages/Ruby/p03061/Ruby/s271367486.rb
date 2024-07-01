N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

B = A - [A.max]
temp = 0
B.each do |b|
  a = A.max
  while b > 0
    a, b = b, a % b
  end
  temp = a if a > temp
end

puts temp == 0 ? A.max : temp