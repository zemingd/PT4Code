num = gets.chomp.split(" ").map(&:to_i)
s_num = num.sort
puts s_num[0] + s_num[1] == s_num[2] ? "Yes" : "No"