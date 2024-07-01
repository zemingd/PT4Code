attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N, K = attrs[0].map{|a| a.to_i}
h = attrs[1].map{|a| a.to_i}.sort.reverse
K.times do |i|
  h[i] = 0
end
total = h.inject(:+)
puts total