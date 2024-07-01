n=gets.split("").map(&:to_i)
if n.sum>= 22
  puts "bust"
else
  puts "win"
end  