W, H, X, Y = gets.split.map(&:to_f)

if W / 2 == X && H / 2 == Y
  puts "#{W*H/2} 1"
elsif X * H / W == Y || H - X * H / W == Y || X == W || Y == H
  puts "#{W*H/2} 0"
elsif (W / 2 - X).abs < (H / 2 - Y).abs
  puts "#{[X, W - X].min*H} 0"
else
  puts "#{W*[Y, H - Y].min} 0"
end