n,k = gets.chomp.split.map(&:to_i)
h = []
n.times { h << gets.to_i }
h.sort!
min = (h[0]-h[-1+k]).abs
(0..n-k).each do |i|
    min = [min, (h[i]-h[i-1+k]).abs].min
end
puts min