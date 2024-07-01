n, a, b = gets.split.map(&:to_i)

d = (a - b).abs

if d.even?
    puts d / 2
else
    mi, ma = [a, b].minmax
    ans_x = mi
    ans_x += (ma-mi-1)/2
    ans_y = n-ma+1
    ans_y += (ma-mi-1)/2
    puts [ans_x, ans_y].min
end
