s=gets.chomp.split("").sort.join
t=gets.chomp.split("").sort.reverse.join
if s==t
  puts "No"
elsif [s,t]==[s,t].sort
  puts "Yes"
else
  puts "No"
end
