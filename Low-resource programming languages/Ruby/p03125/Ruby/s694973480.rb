n, m = gets.chomp.split.map(&:to_i)

puts m%n==0 ? m+n : m-n
