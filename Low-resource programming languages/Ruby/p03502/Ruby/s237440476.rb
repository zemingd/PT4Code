n = gets.to_i
f = n.to_s.chars.map(&:to_i).sum
if x % f == 0
  puts "Yes"
else
  puts "No"
end