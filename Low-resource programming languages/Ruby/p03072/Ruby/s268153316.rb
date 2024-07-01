n = gets.to_i
h = gets.chomp.split.map(&:to_i)
puts h.count { |m| h[0] >= m }
