n, l = gets.chomp.split(" ").map(&:to_i)
array = []

(1..n).each do |number|
  array.push(number + l - 1)
end

array.delete(array.min)

puts array.sum