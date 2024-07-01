n = gets.to_i
h = gets.split.map(&:to_i)
x = h[0]
count = 1
max = h.max

n.times do |i|
  if h.count(max) == 1 && max == h[i] && !(h[i] == h[n-1])
    break
  end
  if i>0 && x < h[i]
    count+=1
  end

  x = h[i]
end

puts count