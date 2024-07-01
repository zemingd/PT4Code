H, W = gets.split(' ').map(&:to_i)

ans = H * W / 2
if(H*W % 2 == 0)
  puts ans
else
  puts ans + 1
end

