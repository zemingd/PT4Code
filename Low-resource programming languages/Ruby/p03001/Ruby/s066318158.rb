W, H, x, y = gets.chop.split.map(&:to_i)

ans = ( (W*H).to_f / 2).round(9)
if 2*x == W && 2*y == H
  print ans.to_s + ' 1'
else
  print ans.to_s + ' 0'
end