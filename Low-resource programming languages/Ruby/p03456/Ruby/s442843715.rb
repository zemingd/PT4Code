v = gets.split.join.to_i
puts (v - Integer.sqrt(v) ** 2 == 0) ? 'Yes' : 'No'
