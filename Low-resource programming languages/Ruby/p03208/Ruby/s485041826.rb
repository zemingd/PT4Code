n, k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort

minh = h[k-1] - h[0]
for i in 1..h.length-k
    minh = h[i+k-1] - h[i] if h[i+k-1] - h[i] < minh
end
puts minh
