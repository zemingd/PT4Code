n, y = gets.chomp.split(' ').map(&:to_i)
default_x, default_y, default_z = -1, -1, -1
(0..n).each do |i|
  (0..n-i).each do |j|
    if 10000 * i + 5000 * j + 1000 * ( n - i - j) == y
      default_x, default_y, default_z = i, j, (n - i - j)
    end
  end
end
puts "#{default_x} #{default_y} #{default_z}"
