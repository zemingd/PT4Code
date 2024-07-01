require 'pp'

h, a = gets.chomp!.split.map(&:to_i)
puts h / a + (h % a > 0 ? 1 : 0)
