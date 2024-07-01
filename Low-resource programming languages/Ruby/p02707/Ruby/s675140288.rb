n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
(1..n).each do |i| 
  puts  numbers.count(i)
end

