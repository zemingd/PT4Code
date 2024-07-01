n,k = gets.split(" ").map(&:to_i)
s = gets.split(//).map(&:to_s)
s[k-1] = s[k-1].downcase
puts s