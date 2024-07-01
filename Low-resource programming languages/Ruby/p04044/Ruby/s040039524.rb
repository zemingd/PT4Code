n, _ = gets.split(" ").map(&:to_i)
words = n.times.map { gets.chomp }
words.sort!
puts words.join.inspect
