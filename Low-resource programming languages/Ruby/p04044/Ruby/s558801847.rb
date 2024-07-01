n, _ = gets.split(" ").map(&:to_i)
words = n.times.map { gets.chomp }
words.sort!
print words.join.inspect
