a,b,c = gets.split(" ").map(&:to_i)

reft = Math.sqrt(a) + Math.sqrt(b)
right = Math.sqrt(c)

if(reft <= right)
  puts "Yes"
else
  puts "No"
end