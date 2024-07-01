n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

hh = h.map{|i| ((t-i*0.006)-a).abs }
minidx = 0
minval = 9999999999
hh.each_with_index{|i,idx|
    if i < minval
        minval = i
        minidx = idx
    end
}
puts minidx+1
