N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

B = A - [A.max]
temp = 0
B.sort.reverse.last(2).each do |b|
  a = A.max
  while b > 0
    a, b = b, a % b
  end
  temp = a if a > temp
end

if temp == 0
  B = A - [B.max]
  temp = 0
  B.sort.reverse.last(2).each do |b|
    a = B.max
    while b > 0
      a, b = b, a % b
    end
    temp = a if a > temp
  end
end

puts temp == 0 ? A.min : temp