n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
pq = Hash.new(0)

a.each do |i|
  pq[i] += 1
end

m.times do
  bc = gets.split.map(&:to_i)
  pq[bc[1]] += bc[0]
end

ans = 0
n.times do
  ans += pq.max[0]
  if pq.max[1] == 1
    pq.delete(pq.max[0])
  else
    pq[pq.max[0]] = pq.max[1] - 1
  end
end

puts ans