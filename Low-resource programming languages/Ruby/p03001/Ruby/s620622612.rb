W, H, x, y = gets.chomp.split(" ").map(&:to_i)

if x == W / 2.0 && y == H / 2.0
    puts "#{W * H / 2.0} 1"
else
    puts "#{W * H / 2.0} 0"
end
