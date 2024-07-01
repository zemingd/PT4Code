a,b,c = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i
max = [a,b,c].max
puts max*(2.pow(k)) + a + b + c - max