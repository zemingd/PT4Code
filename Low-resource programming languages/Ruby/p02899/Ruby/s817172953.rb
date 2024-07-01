n = gets.to_i
a = gets.split.map(&:to_i)
h = {}
n.times {|i| h[a[i]] = i+1}
puts h.sort.to_h.values.join(" ")