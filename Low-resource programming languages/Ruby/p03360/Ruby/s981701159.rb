a,b,c = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i
m = [a,b,c].max
puts a+b+c+m*2**k-m