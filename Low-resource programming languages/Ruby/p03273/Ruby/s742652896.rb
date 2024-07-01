h, w = gets.split.map(&:to_i)
grid = h.times.map{gets}.map(&:chomp).map(&:chars)
grid = grid.select{|line| line.any?{|c| c == "#"}}.transpose.select{|line| line.any?{|c| c == "#"}}.transpose

grid.each{|line|
    puts line.join
}
