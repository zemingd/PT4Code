n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
k = a.inject(:+) / (4.0 * m)
puts a.select{|x| x >= k}.size >= m ? "Yes" : "No"