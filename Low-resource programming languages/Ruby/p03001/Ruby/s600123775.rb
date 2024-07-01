W, H, x, y = gets.split.map(&:to_i)
ans = W * H / 2
ama = W * H % 2

if W.to_f/2 == x.to_f and H.to_f/2 == y.to_f
  puts sprintf("%.6f %d", ans, 1)
else
  if ama == 1
    puts "#{ans}.5 0"
  else
    puts sprintf("%.6f %d", ans, 0)
  end
end
