array = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i

max = array.max

(1..k).each do
  max *= 2
end

puts array.inject(:+) + max - array.max