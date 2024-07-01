n = gets.to_i
s = gets.chomp.chars

center = n / 2
if s[0...center] == s[center..-1]
  puts "Yes"
else
  puts "No"
end
