(H, W) = gets.split(' ').map(&:to_i)
ans = 0
if W % 2 == 1 then
  ans = ( H + 1 ) / 2
end
ans = ans + H * (W / 2)
p ans