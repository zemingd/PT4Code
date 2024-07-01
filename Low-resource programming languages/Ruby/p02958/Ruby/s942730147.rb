n = gets.to_i
array = gets.split(" ").map(&:to_i)
sorted_array = array.sort

count = 0
sorted_array.zip(array) do |a, b|
  count += 1 if a != b
end

puts count == 0 || count == 2 ? "YES" : "NO"