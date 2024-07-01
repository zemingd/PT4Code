s = gets.chomp
t = gets.chomp

if s == t[0...(t.length-1)] and s.length+1 == t.length
  puts "Yes"
else
  puts "No"
end