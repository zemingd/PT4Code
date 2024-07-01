a,b=gets.chomp.split(" ").map(&:to_i)
c=a*b
if c%2==0 then
  puts "No"
else
  puts "Yes"
end  