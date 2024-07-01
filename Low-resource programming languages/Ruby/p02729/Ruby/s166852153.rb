n,m = gets.split(" ").map(&:to_i)

puts (1..n).to_a.combination(2).count + (1..m).to_a.combination(2).count 