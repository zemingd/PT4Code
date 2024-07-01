N = gets.to_i
array=gets.chomp.split(" ").map(&:to_i)

ret = 0 
array.combination(3) do |e|
    if (e[0]-e[1]).abs < e[2] && e[2] < e[0] + e[1]
        ret += 1
    end
end
puts ret