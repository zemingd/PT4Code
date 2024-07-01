n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)
mod = 998244353
dist = Array.new(n+1, 0)
ans = i = 1
d.each do |i|
    dist[i] += 1
end
if d[0] != 0 || 1 < dist[0]
    puts 0
    exit
end

d.max.times do |i|
    ans *= dist[i] ** dist[i+1]
    ans %= mod
end

puts ans