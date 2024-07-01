
count = Hash.new(0)
gets.split(/\s/).each{ |n_str| count[n_str.to_i] += 1 }
puts count[5] == 2 && count[7] == 1 ? "YES" : "NO"
