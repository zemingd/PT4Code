W,H,N = gets.split.map(&:to_i)
x = Array.new
y = Array.new
a = Array.new
for i in 0..N-1
    x[i],y[i],a[i] = gets.split.map(&:to_i)
end

x_min = Array.new
x_max = Array.new
y_min = Array.new
y_max = Array.new
x_min[0] = 0
x_max[0] = W
y_min[0] = 0
y_max[0] = H
for i in 0..N-1 
    if a[i] == 1
        x_min.push(x[i])
    elsif a[i] == 2
        x_max.push(x[i])
    elsif a[i] == 3
        y_min.push(y[i])
    elsif a[i] == 4
        y_max.push(y[i])
    end
end

puts ((x_max.min-x_min.max) * (y_max.min-y_min.max))
