H, W, X, Y = gets.chomp.split.map(&:to_i)
area = "%1f" % ((H * W) / 2.0)

if (H == Y + Y) && (W == X + X)
  puts area.to_s + " 1"
else
  puts area.to_s + " 0"
end
