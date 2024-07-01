n,k = gets.chomp.split.map(&:to_i)
s = gets.chomp
s[k-1] = S[k-1].downcase
puts s