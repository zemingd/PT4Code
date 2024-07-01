n = gets.to_i
a = gets.split.map(&:to_i)

puts a == a.uniq ? 'Yes' : 'No'
