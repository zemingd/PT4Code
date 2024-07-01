n, _ = gets.split.map(&:to_i)
ss = n.times.map { gets.chomp }.sort!

puts ss.join
