n = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

answer = 0
n.times do |i|
  next if i-1 < 0 || i+1 >= n
  a = numbers[i-1]
  b = numbers[i]
  c = numbers[i+1]
  answer += 1 if [a, b, c].sort[1] == b 
end

puts answer
