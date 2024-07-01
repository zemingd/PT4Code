N,K = gets.chomp.split(" ").map(&:to_i)
h = N.times.map{gets.to_i}
h.sort!
i = K-1
min = 10000000000
while i < N
  min = [h[i] - h[i-(K-1)],min].min
  i += 1
end
puts min