n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = []
ans = 0

a.each do |i|
  b << i
  b << i - 1
  b << i + 1
end

((b.min)..(b.max)).each do |i|
  ans = b.count(i) if b.count(i) > ans
end

puts ans
