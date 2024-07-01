n, k = gets.split(" ").map(&:to_i)
s = gets.chomp.split("")
s[k-1] = s[k-1].downcase
puts s.join