a,b,c = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i

puts a+b+c + [a,b,c].max * (k-1)
