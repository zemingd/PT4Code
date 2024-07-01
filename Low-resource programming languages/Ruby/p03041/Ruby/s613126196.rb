n, k = gets.split.map(&:to_i)
s = gets.chomp.to_s
s[k] = s.slice(k-1).downcase
puts s