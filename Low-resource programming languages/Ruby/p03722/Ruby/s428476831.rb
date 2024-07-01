n, m = gets.chomp.split(" ").map(&:to_i)
edges = []
m.times do
    edges << gets.chomp.split(" ").map(&:to_i)
    edges[-1][2] = -1 * edges[-1][2]
end

dist = Array.new(n,Float::INFINITY)
dist[0] = 0

(n-1).times do
    edges.each do |e|
        if dist[e[1]-1] > dist[e[0]-1] + e[2]
            dist[e[1]-1] = dist[e[0]-1] + e[2]
#            p dist
        end
    end
end

ans = dist[n-1] * -1
neg = Array.new(n, false)

n.times do
    edges.each do |e|
        if dist[e[0]-1] + e[2] < dist[e[1]-1]
            neg[e[1]-1] = true
        end

        neg[e[1]-1] = true if neg[e[0-1]] == true
    end
end

if neg[n-1]
    puts "inf"
else
    puts ans
end