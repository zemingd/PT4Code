array = gets.chomp.split(" ").map(&:to_i)
array.delete_at(0)
array.join.to_i % 4 == 0 ? answer = "YES" : answer = "NO"
puts answer