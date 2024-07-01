W, H, x, y = gets.split(" ").map(&:to_i)

if W*x == H*y || W*y == H*x then  
  num = 1
else
  num = 0
end
puts "#{sprintf("%10.5f",(W*H)/2)} num"