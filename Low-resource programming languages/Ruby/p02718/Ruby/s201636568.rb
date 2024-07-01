N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
sum = A.sum
count = A.find_all{|i| i * 4 * M >= sum}
puts count.length >= M ? "Yes" : "No"

