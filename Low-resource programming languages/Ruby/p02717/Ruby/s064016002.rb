n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
sum = a.sum
count = a.find_all{|i| i * 4 * m >= sum}
puts ans.length >= m ? "Yes" : "No"

