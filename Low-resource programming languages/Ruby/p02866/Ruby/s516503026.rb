n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)
mod = 998244353
dist = Array.new(n, 0)
ans = 1
i = 2
d.each do |i|
    dist[i] += 1
end
if d[0] != 0 || 1 < dist[0]
    puts 0
    exit
end

while i < n && dist[i] != 0
    ans *= dist[i-1] ** dist[i]
    ans %= mod
    i += 1
end

puts ans