n, k = gets.chomp.split(" ").map(&:to_i)

puts (k-1)**(n-1)*k
