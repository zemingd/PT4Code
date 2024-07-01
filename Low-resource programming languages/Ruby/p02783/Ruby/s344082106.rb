h, a = gets.split.map(&:to_i)
puts h % a > 0 ? h / a + 1 : h / a
