n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
min = a.sum.to_f / (4 * m)
puts a.count { |ai| ai >= min } >= m ? "Yes" : "No"