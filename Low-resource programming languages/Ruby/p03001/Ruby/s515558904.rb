W, H, x, y = gets.split(" ").map(&:to_i)

if W*x == H*y || W*y == H*x then  
  puts "#{(W*H).to_f/2} 1"
else
  puts "#{(W*H).to_f/2} 0"
end
