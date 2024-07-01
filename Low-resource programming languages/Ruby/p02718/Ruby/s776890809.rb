_, m = gets.chomp.split(" ").map(&:to_i)
arr_a = gets.chomp.split(" ").map(&:to_i) 

threshold = arr_a.sum.to_f / (4 * m)

puts arr_a.select{|a| a >= threshold}.count > m ? "Yes" : "No"
