_, k = gets.split.map(&:to_i)
s = gets.to_s
puts s[k] = s.slice(k-1)