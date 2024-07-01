W, H, X, Y = gets.split(' ').map(&:to_i)
 
area = ((W*H).to_f)/2
if X == (W/2) && Y == (H/2)
  center = 1
else
  center = 0
end
  
puts "#{area} #{center}"