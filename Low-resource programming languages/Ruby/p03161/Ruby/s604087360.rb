N , K = gets.split.map{|i| i.to_i}
h = gets.split.map{|i| i.to_i}

c = Array.new(N)

c[0] = 0

for i in 1 .. K
    c[i] = (h[i] - h[0]).abs
end

for i in K + 1 .. N - 1
    c[i] = c[i - 1] + 10 ** 4
    for j in 1 .. K
        a = c[i - j] + (h[i] - h[i - j]).abs
        c[i] = (c[i] < a) ? c[i] : a
    end
end

puts c[N - 1]
