s = gets.chomp.to_s
t = gets.chomp.to_s

d = t.chop!

if s == d
  puts "Yes"
else
  puts "No"
end
