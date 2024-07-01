s_num = gets.chomp
num = s_num.to_i
sum = s_num.split("").reduce{|sum, n| sum.to_i+n.to_i}
puts num%sum!=0 ? 'No' : 'Yes'
