H, W = gets.split.map(&:to_i)

while (H != 0 && W != 0)

loop do 
  puts "#" * W
  H -= 1
  if H == 0
  break 
 end

 puts " "
 H, W = gets.split.map(&:to_i)
end
