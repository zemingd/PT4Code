n = gets.to_i
a = n.times.map{gets.chomp}.sort
max = 0
h = Hash.new(0)
a.each{|s|
  h[s] += 1
  max = h[s] if max < h[s]
}
ans = []
h.keys.each{|s|
  if h[s]==max
    ans << s
  end
}
puts ans