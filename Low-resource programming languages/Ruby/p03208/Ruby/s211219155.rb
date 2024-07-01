n, k = gets.chomp.split.map(&:to_i)
h = []
n.times do |i|
  h[i] = gets.chomp.to_i
end

h.sort!.reverse!

hh = []
(n-k+1).times do |i|
  hh.push(h[i] - h[i+k-1])
end
p hh.sort.first
