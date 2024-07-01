n, l = gets.chomp.split(" ").map(&:to_i)
array = []

(1..n).each do |number|
  array.push((l + number - 1))
end

new_array = []
min = array.first.abs
index = 0

array.each_with_index do |number,idx|
  if min >= number.abs
    index = idx
    min = number.abs
  end
end

puts array.inject(:+) - array[index]


