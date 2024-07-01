W, H, X, Y = gets.split(' ').map(&:to_i)
 
area = ((W*H).to_s.to_f)/2
if X*2 == W && Y*2 == H
  center = 1
else
  center = 0
end
  
puts "#{area} #{center}"