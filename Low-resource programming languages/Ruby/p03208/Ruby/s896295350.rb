n, k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort
d = (h.length-1).times.map{|i|
    (h[i] - h[i+1]).abs
}
mind = d[0..k-2].inject(:+)
for i in 1..d.length-(k-1)
    m = d[i..i+k-2].inject(:+)
    mind = m if m < mind
end
puts mind
