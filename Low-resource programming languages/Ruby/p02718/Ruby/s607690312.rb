n, m = gets.chomp.split.map(&:to_i)

array = gets.chomp.split.map(&:to_i)

sum = array.sum

ans = array.find_all {|n| n > sum / (4 * m)}

puts ans.length > m ? "Yes" : "No"
