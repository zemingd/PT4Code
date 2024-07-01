def inp() a=gets.chomp.split(" ").map(&:to_i)end
a,b,c,d = inp
if((a-c).abs <= d)
  puts "Yes"
elsif((a-b).abs <= d and (b-c).abs <= d)
  puts "Yes"
else
  puts "No"
end