n, k = gets.chomp.split(" ").map {|item| item.to_i }
s = gets.chomp

s[k-1] = s[k-1].downcase
puts s