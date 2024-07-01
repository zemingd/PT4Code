Height,Width = gets.strip.split(" ").map(&:to_i)
h, w = gets.strip.split(" ").map(&:to_i)

puts (Height * Width - w*Height - h*Width + h*w).to_s