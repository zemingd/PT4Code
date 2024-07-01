arr = gets.chomp.split(" ").map(&:to_i)
sort = arr.sort
max = sort.max
puts max == sort[0] + sort[1] ? 'Yes' : 'No'
