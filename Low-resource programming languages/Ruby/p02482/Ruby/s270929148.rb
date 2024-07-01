a, b = gets.chomp.split.map {|s| s.to_i}
puts ["a < b", "a > b", "a == b"].find {|v| eval v}