k, n = gets.chomp.split.map(&:to_i)

p k*((k-1)**(n-1))
