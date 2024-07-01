dist = []
cnt = 0
n,m = gets.chomp.split(" ").map(&:to_i)
n.times do |i|
  dist[i]=true
end
h = gets.chomp.split(" ").map(&:to_i)
m.times do |i|
  a, b= gets.chomp.split(" ").map(&:to_i)
  a-=1
  b-=1
  if h[a] > h[b] && dist[b]
    dist[b] = false
  elsif h[a] < h[b] && dist[a]
    dist[a] = false
  elsif h[a] == h[b]
    dist[a] = false
    dist[b] = false
  end
  # p "#{a} #{b}"
  # p dist
end

dist.each do |v|
  cnt += 1 if v
end

# p dist
puts cnt