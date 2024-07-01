# https://atcoder.jp/contests/abs/tasks/abc085_c



N, Y = gets.split.map(&:to_i)

# 最小枚数となる組み合わせ
x_max = Y / 10000
(0..x_max).each do |x|
  y_max = (Y - 10000 * x) / 5000
  (0..y_max).each do |y|
    z = N - x - y
    break if z < 0

    if 10000 * x + 5000 * y + 1000 * z == Y
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end

puts '-1 -1 -1'
