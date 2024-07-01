n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
sum = a.sum
ans = sum.find_all {|n| n * 4 * m >= sum}
puts ans.length >= m ? "Yes" : "No"
