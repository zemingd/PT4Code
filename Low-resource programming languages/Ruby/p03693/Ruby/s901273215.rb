n = gets.chomp.split(" ").join.to_i
result = "NO"; result = "YES" if n % 4 == 0
puts result