n,k = gets.chomp.split().map(&:to_i)
h = []
n.times do
  h.push gets.chomp.to_i
end

h.sort!

ans = Float::INFINITY

(n-k+1).times do |i|
  ans = [ans, h[i+k-1] - h[i]].min
end

puts ans