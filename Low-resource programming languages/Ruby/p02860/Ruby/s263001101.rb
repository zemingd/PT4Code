n = gets.chomp.to_i
s = gets.chomp.to_s

if n.odd? || (s[0..(n/2 - 1)] != s[n/2..-1])
  puts "No"
else
  puts "Yes"
end
