H,W = STDIN.gets.split(' ').map{|s| s.to_i}


if H == 1 or W == 1
  puts 1
else
  puts (H * W / 2.0).ceil
end


