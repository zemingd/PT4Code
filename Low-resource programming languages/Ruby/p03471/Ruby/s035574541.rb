N, money = gets.chomp.split(' ').map(&:to_i)
money /= 1000

ans_x = -1; ans_y = -1; ans_z = -1
(0..N).each do |x|
  (0..N-x).each do |y|
    z = N - x - y
    sum = 10 * x + 5 * y + z
    if sum == money
      ans_x = x
      ans_y = y
      ans_z = z
    end
  end
end

puts "%d %d %d" % [ans_x, ans_y, ans_z]
