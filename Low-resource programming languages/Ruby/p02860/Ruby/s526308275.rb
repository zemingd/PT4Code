n = gets.chomp.to_i
s = gets.chomp

s2 = s.slice!(n/2..n)

puts 'Yes' if s == s2

puts 'No' if s != s2