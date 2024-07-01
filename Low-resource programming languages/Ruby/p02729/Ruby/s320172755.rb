n,m = gets.chomp.split.map(&:to_i)

n = n*(n-1)/2
m = m*(m-1)/2

puts n+m