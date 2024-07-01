n = gets.to_i

ret = 0
map = {}
(1..n).each do |i|
    s = gets.chomp.split("").sort.join("")
    if map[s] != nil
        map[s] += 1
    else
        map[s] = 1
    end
end

# 2 => 1
# 3 => 3
# 4 => 6
# 5 => 10
map.each do |key, value|
    if value > 1
        ret += value * (value -1) /2  
    end
end

puts ret
