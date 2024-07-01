w,h,n = STDIN.gets.split.map{|s| s.to_i}
x = [0, w]
y = [0, h]
n.times do
        w,h,a = STDIN.gets.split.map{|s| s.to_i}
        case a
        when 1
                x[0] = [x[0], w].max
        when 2
                x[1] = [x[1], w].min
        when 3
                y[0] = [y[0], h].max
        when 4
                y[1] = [y[1], h].min
        end
        if x[0] >= x[1] or y[0] >= y[1]
                puts 0
                exit
        end
end
puts (x[1] - x[0])*(y[1] - y[0])
