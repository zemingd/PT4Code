H, W, X, Y = gets.split.map(&:to_i)
area = (H * W) / 2.0

if (H == 2 * Y) && (W == 2 * X)
  puts area.to_s + " 1"
else
  puts area.to_s + " 0"
end
