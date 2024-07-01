W, H, x, y = gets.split(" ").map(&:to_i)

if W*x == H*y || W*y == H*x then  
  puts "#{W*H/2} 1"
else
  puts "#{W*H/2} 0"
end
