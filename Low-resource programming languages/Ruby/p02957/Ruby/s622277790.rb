a,b = gets.chomp.split(" ").map(&:to_i)
puts (a+b).even? ? (a+b)/2 : "IMPOSSIBLE"