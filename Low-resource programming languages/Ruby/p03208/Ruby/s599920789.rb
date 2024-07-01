n,k=gets.split.map(&:to_i)
h = []
n.times{h << gets.to_i}
h.sort!
n = []
k.times do |a|
  n << (h[a+1] - h[a])
end
puts n.slice(0,3).inject(:+)