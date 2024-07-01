n = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

count = 0
1.upto(n - 2) do |i|
  count += 1 if numbers[i] == numbers[i - 1..i + 1].sort[1]
end
puts count
