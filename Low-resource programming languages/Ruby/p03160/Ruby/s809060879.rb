N = gets.to_i
h = gets.split.map{|i| i.to_i}

c = Array.new(N)

c[0] = 0
c[1] = (h[1] - h[0]).abs

for i in 2 .. N - 1
    a = c[i - 1] + (h[i] - h[i - 1]).abs
    b = c[i - 2] + (h[i] - h[i - 2]).abs
    c[i] = (a < b) ? a : b
end

puts c[N - 1]