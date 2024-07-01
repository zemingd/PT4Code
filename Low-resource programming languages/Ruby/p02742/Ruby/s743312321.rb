H,W = gets.split.map(&:to_i)
if (H * W) == 1
  puts 0
else
  p ((H*W)/2.0).ceil
end