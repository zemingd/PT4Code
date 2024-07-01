require "set"
n, m = gets.chomp.split(" ").map {|c| c.to_i}
h = gets.chomp.split(" ").map {|c| c.to_i}
ab = []
hash = Hash.new(0)
m.times do
    ai, bi = gets.chomp.split(" ").map {|c| c.to_i-1}
    # ai > bi
    if h[ai] < h[bi]
        temp = ai
        ai = bi
        bi = temp
    end
    hash[ai] = 1
    if hash[bi] == 1
        hash.delete[bi]
    end
end

puts hash.length