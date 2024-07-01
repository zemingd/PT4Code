W, H, x, y = gets.split(" ").map(&:to_i)

if W == x*2 && H == y*2 then  
  puts "#{(W*H)/2.0} #{1}"
else
  puts "#{(W*H)/2.0} #{0}"
end
