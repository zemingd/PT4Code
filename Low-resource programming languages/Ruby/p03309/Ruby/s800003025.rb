n = gets.to_i
a = gets.strip.split.map {|x| x.to_i}
min = Float::INFINITY
n.times do |i|
    comp = (0..n-1).inject(0) {|sum, j| sum + (a[j] - a[i] + i - j).abs}
    min = min < comp ? min : comp
end
puts min
