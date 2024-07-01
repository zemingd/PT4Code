d,t,s = gets.chomp.split(' ').map(&:to_i)
if(d<=t*s)
  puts "Yes"
else
  puts "No"
end