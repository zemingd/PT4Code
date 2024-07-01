a, b, c = $stdin.readline.split(" ").map {|s| s.to_i }

puts (a..b).count {|n| c % n == 0 }

