a, b = gets.chomp.split(" ").map(&:to_i)
k = (a+b)/2
puts (a-k).abs == (b-k).abs ? k : "IMPOSSIBLE"