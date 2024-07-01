a = gets.split(" ").map(&:to_i)
b = a.uniq

puts b.size == 2 ? 'Yes' : 'No'