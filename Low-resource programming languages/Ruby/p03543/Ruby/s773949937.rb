array = gets.chomp.split("").map(&:to_i)
answer = "No"

array_2 = []

array.each do |number|
  array_2.push(number)
end

array.pop
array_2.shift

answer = "Yes" if array.uniq.length == 0 || array_2.uniq.length == 0

puts answer