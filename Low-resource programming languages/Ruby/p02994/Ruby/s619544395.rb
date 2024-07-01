n, l = gets.chomp.split(" ").map(&:to_i)
array = []

(1..n).each do |number|
  array.push((l + number - 1))
end

new_array = array.map(&:abs)
puts array.inject(:+) - new_array.min
