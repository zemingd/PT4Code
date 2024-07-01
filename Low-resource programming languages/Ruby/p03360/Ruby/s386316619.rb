number = gets.split(" ").map(&:to_i)
K = gets.to_i
 
print number.max * (2**K-1) + number.inject(:+)