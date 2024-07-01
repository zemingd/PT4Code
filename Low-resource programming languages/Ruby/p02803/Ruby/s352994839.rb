require 'set'
h, w = gets.split.map(&:to_i)

grid = h.times.map{|i| gets.chomp.chars}

define_method(:fill){|x, y|
    next_points = [[x, y]]
    done = Set.new
    move = 0
    while true
        next_points = next_points.select{|a, b|
            a >= 0 &&
            a < w &&
            b >= 0 &&
            b < h &&
            grid[b][a] == '.' &&
            !done.include?([a, b])
        }
        break if next_points.empty?
        next_points.each{|it| done.add(it)}
        next_points = next_points.map{|a, b| [[a + 1, b],[a - 1, b],[a, b + 1],[a, b - 1]]}.flatten(1)
        move += 1
    end
    move
}

m = 0
(0...h).each{|y|
    (0...w).each{|x|
        m = [m, fill(x, y)].max
    }
}
puts m - 1
