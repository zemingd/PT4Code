nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

ab = []
m.times do
    input = gets.chomp.split
    2.times do |i|
        input[i] = input[i].to_i
    end
    input.sort!
    ab << input
end

towers = Array.new(n, true)
m.times do |j|
    a = ab[j][0] - 1
    b = ab[j][1] - 1
    towers[a] = false if h[a] <= h[b]
    towers[b] = false if h[b] <= h[a]
end

puts towers.count(true)