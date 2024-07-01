a,b,c = gets.split(" ").map(&:to_i)


reft = Math.sqrt(a).floor + Math.sqrt(b).floor
right = Math.sqrt(c).floor

if(reft < right)
  puts "Yes"
else
  puts "No"
end