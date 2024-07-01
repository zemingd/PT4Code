W,H,N = gets.split.map(&:to_i)
x_left = 0
x_right = W
y_bottom = 0
y_top = H
N.times do |i|
    x,y,a = gets.split.map(&:to_i)
    case a
    when 1
        x_left = x if x_left < x
    when 2
        x_right = x if x < x_right
    when 3
        y_bottom = y if y_bottom < y
    when 4
        y_top = y if y < y_top
    end
end
x = x_right - x_left
y = y_top - y_bottom
x = 0 if x < 0
y = 0 if y < 0
puts x*y