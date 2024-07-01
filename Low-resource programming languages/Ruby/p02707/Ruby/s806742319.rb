n = gets.to_i
array = []
numbers = gets.split.map(&:to_i)
(1..n).each do |x|
  array << numbers.count(x)
end
puts array