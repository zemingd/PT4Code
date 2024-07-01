N, M = gets.split().map(&:to_i)
A = gets.split().map(&:to_i)
 
sum = A.inject(:+)
 
count = A.find_all{|i| i * 4 * M >= sum}.size
puts count >= M ? "Yes" : "No"