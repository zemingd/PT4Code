# n = gets.chomp.to_i
h = []
dist = {}
ans = 0

n,m = gets.chomp.split(" ").map(&:to_i)
n.times do |i|
  dist[i]=[]
end
h = gets.chomp.split(" ").map(&:to_i)
m.times do |i|
  a, b= gets.chomp.split(" ").map(&:to_i)
  dist[a-1].push(b-1).uniq!
  dist[b-1].push(a-1).uniq!
end

dist.each do |k, v|
  flag = true
  if v.nil?
    ans += 1
    next
  end
  v.each do |i|
    if h[i] >= h[k]
      flag = false
      break
    end
  end
  ans += 1 if flag 
end

puts ans