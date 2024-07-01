n = gets.chomp("").to_i

s = gets.split.map(&:to_i)

s.sort!

puts s[n/2] - s[n/2-1]
