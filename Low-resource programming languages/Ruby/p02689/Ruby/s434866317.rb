require "set"
n, m = gets.chomp.split(" ").map {|c| c.to_i}
h = gets.chomp.split(" ").map {|c| c.to_i}
all = Array.new(n, 1)
m.times do
    ai, bi = gets.chomp.split(" ").map {|c| c.to_i-1}
    if h[ai] == h[bi]
        all[ai] = 0
        all[bi] = 0
        next
    end
    # h[ai] > h[bi]
    if h[ai] < h[bi]
        temp = ai
        ai = bi
        bi = temp
    end
    #all[ai] = 1
    if all[bi] == 1
        all[bi] = 0
    end
end

puts all.sum