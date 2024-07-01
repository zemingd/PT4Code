H, W = gets.split.map(&:to_i)
if H == 1
  puts 1
  exit 0
end
if H.even? && W.even? 
  puts H * W / 2
  exit 0
end
if H.even?
  puts H * W / 2
else
  puts ((H - 1) * W / 2) + (W + 1) / 2
end