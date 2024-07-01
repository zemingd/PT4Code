n, total = gets.split.map(&:to_i)
ans_x, anx_y, ans_z = -1, -1, -1

(0..n).each do |x|
  (0..n).each do |y|
    z = n - x - y
    if 10000*x + 5000*y + 1000*z == total
      ans_x, anx_y, ans_z = x, y, z
    end
  end
end

puts "#{ans_x} #{anx_y} #{ans_z}"