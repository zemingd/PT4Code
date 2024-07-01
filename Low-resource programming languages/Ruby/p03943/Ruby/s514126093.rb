arr = gets.chomp.split(" ").map(&:to_i)
sort = arr.sort
max = sort.max
puts result = (max == sort[0] + sort[1]) ? 'YES' : 'NO'