n = gets.to_i
s = gets.chomp

if n.even? && s[0...n/2] == s[n/2..n]
  puts "Yes"
else
  puts "No"
end