n,k = gets.split.map(&:to_i)
h = []
n.times do
  h << gets.to_i
end
 
h.sort!
ans = [h.max-h.min]
(0..n-k).each do |i|
  ans = [ans,h[i+k-1]-h[i]].min
end
puts ans