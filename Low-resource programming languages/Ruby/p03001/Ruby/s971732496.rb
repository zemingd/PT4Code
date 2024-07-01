W, H, X, Y = gets.chomp.split.map(&:to_i)
area = sprintf("%1f", (H * W) / 2r)

if (H == 2 * Y) && (W == 2 * X)
  puts area.to_s + " 1"
else
  puts area.to_s + " 0"
end
