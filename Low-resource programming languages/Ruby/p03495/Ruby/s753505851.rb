n, k = gets.strip.split.map(&:to_i)
xs = gets.strip.split.map(&:to_i)

h = Hash.new
h.default = 0
xs.each {|x| h[x] += 1}

ys = h.to_a.sort {|a,b| a[1] <=> b[1]}
z = ys[0...ys.length-k].map{|x| x[1]}.inject(:+)
z = z == nil ? 0 : z
puts z
