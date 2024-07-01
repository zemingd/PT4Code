a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

ret = 0
(a+1).times do |i|
  y = x - 500 * i
  break if y < 0
  (b+1).times do |j|
    break if (z = y - 100 * j) < 0
    ret += 1 if z % 50 == 0 && z / 50 <= c
  end
end

p ret