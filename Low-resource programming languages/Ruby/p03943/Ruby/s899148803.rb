l = gets.split.map(&:to_i)

l.sort!

if l[0] + l[1] == l[2]
  puts "Yes"
else
  puts "No"
end
