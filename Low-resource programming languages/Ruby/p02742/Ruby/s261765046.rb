H, W = gets.split.map(&:to_i)
 
if H.odd? && W.odd?
  puts (H * W / 2) + 1
else
  puts puts (H * W / 2)
end