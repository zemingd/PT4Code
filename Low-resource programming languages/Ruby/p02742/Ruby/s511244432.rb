H,W = gets.split.map &:to_i
if H * W == 0
  puts 0
  return
end 
if H * W == 1 
  puts 1
  return
end
puts (H * W) / 2 + ( (H * W).odd? ? 1 : 0 )
