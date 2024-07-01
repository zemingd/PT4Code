N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort.reverse

B = A - [A.last]
temp = 0
B.last(2).each do |b|
  a = A.last
  while b > 0
    a, b = b, a % b
  end
  temp = a if a > temp
end

C = A - [A[-2]]

C.last(2).each do |b|
  a = A[-2]
  while b > 0
    a, b = b, a % b
  end
  temp = a if a > temp
end

puts temp == 0 ? A.min : temp