n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)
mod = 998244353
dist = Array.new(n, 0)
ans = 1
i = 1
d.each do |i|
    dist[i] += 1
end
if d[0] != 0 || 1 < dist[0]
    puts 0
    exit
end

dist.each do |i|
    prev = i
    if prev == 0 && i != 0
        puts 0
        exit
    end
end

while dist[i] != 0
    ans *= dist[i] ** dist[i+1]
    ans %= mod
    i += 1
end

puts ans