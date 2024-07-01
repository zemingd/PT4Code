gets
coords = gets.split.map(&:to_i)
puts (1..100).map{|c| coords.map{|it| (c - it) ** 2}.inject(:+) }.min
