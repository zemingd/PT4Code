s=gets.chomp
t=gets.chomp
if s == t[0..(t.size-2)]
  puts "Yes"
else
  puts "No"
end