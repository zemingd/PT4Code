n = gets.to_i
a = gets.strip.split.map { |x| x.to_i }
min = a.inject(0) {|sum, x| sum + x.abs}
n.times { |i| a[i] -= (i+1)}
n.times do |i|
    b = a[i]
    temp = n.times.map {|j| (a[j] - b).abs}
    min = min < temp.sum ? min : temp.sum
end
puts min
