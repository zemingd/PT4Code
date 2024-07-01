N,M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
neigh = Array.new(N,0)
AB = []
M.times {
  a,b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  if neigh[a] < H[b]
    neigh[a] = H[b]
  end
  if neigh[b] < H[a]
    neigh[b] = H[a]
  end  
}

#p neigh
cnt = 0
N.times { |i|
  if H[i] > neigh[i]
    cnt += 1
  end
}

puts cnt
