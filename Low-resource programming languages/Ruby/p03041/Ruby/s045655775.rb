_, k = gets.split.map(&:to_i)
s = gets
k -= 1
s[k] = s[k].downcase
puts s
