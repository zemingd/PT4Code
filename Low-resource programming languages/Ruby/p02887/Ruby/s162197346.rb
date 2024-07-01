n = gets.chomp.to_i
s = gets.chomp
ans = s.tr_s("a-z", "A-Z")
puts ans.length