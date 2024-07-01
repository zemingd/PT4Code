n,m,k=gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

ans = 0
c = Array.new(n+1){0}
d = Array.new(m+1){0}

n.times do |i|
  c[i+1] = c[i] + a[i]
end
m.times do |l|
  d[l+1] = d[l] + b[l]
end
bm = m
(n+1).times do |i|
  break if c[i] > k
  while d[bm] > k - c[i]
   bm -= 1
  end
  if ans < bm + i 
    ans = bm + i
  end
end
puts ans