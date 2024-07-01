n, l = gets.chomp.split(" ").map(&:to_i)

array = Array.new
n.times do |i|
  array << (l + (i+1) -1)
end

array_a = array.map do |a|
  a.abs
end

index = array_a.index(array_a.min)

array.delete_at(index)

result = array.inject(:+)

puts result