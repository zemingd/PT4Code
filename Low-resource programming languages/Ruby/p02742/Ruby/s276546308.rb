height,width = gets.split(" "),map{|i| i.to_i}
if height == 1
  puts "0"
elsif width == 1
  puts "0"
elsif height*width%2 == 0 then
  puts height*width/2
else
  puts ((height-1)*width+(width+1))/2
end