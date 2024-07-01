abc = gets.chomp.split.map(&:to_i)
arr = [abc[0], abc[1], abc[2]]
candy1, candy2 = arr.partition{|i| i == arr.max}
puts candy1[0] == candy2.inject(:+) ? "Yes" : "No"