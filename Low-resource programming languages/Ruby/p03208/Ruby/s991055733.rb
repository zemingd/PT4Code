n, k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort
d = (h.length-1).times.map{|i|
    (h[i] - h[i+1]).abs
}

ds = d[0..k-2]
mind = ds.inject(:+)
for i in 1..d.length-(k-1)
    front = ds.shift
    ds << d[i+k-2]
    if front != d[i+k-2] || d[i+k-2] < mind
        m = ds.inject(:+)
        mind = m if m < mind
    end
end
puts mind
