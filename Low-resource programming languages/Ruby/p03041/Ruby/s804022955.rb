n, k = gets.split.map(&:to_i)
s = gets.chomp.to_s
puts s[k] = s.slice(k-1).downcase