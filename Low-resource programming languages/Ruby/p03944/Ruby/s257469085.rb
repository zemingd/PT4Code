w, h, n = gets.split.map(&:to_i)
x1 = y1 = 0
x2 = w
y2 = h
n.times{|i|
    x, y, a = gets.split.map(&:to_i)
    case a
        when 1
        x1 = [x1, x].max
        when 2
        x2 = [x2, x].min
        when 3
        y1 = [y1, y].max
        when 4
        y2 = [y2, y].min
    end
    }
p [x2 - x1, 0].max * [y2 - y1, 0].max