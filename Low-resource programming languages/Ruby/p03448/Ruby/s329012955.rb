a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
num = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |z|
      if 500 * i + 100 * j + 50 * z == x
        num += 1
      end
    end
  end
end
puts num