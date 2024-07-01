A, B, C = gets.chomp.split(' ').map(&:to_i)

puts (1..10000000).find {|n| (B * n + C) % A == 0}
