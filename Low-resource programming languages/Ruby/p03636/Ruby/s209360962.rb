s = gets.strip
n = s.length - 2
s = s.split('')

puts s[0] + (s.length-2).to_s + s[s.length-1]