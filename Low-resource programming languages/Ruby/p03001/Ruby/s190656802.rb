W, H, x, y = gets.chomp.split(' ').map(&:to_i)

res = sprintf("%.9f", (W * H) / 2r)

case
when W == H && x == y && W.even? && W / 2 == x
  puts "#{res} 1"
else
  puts "#{res} 0"
end