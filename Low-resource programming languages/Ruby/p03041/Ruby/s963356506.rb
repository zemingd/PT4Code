n, k = gets.split.map &:to_i
s = gets.chomp.chars
s[k-1] = s[k-1].downcase
puts s.join