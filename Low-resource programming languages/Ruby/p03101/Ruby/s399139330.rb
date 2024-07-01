H,W = gets.split.map(&:to_i)
h,w = gets.split.map(&:to_i)
if (H*W) == (h*w)
    puts 0
else
    puts (H*W) - (h*W) - (w*w)
end