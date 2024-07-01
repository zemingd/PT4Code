W, H, x, y = gets.chomp.split(' ').map(&:to_i)

case
when W == H && x == y && W.to_f / 2 == x
  puts "#{sprintf("%.9f", (W * H).to_f / 2)} 1"
else
  puts "#{sprintf("%.9f", (W * H).to_f / 2)} 0"
end