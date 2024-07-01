
n = gets.to_i
p_i = gets.split.map(&:to_i)
second = []
for k in 1...n-1
    if (p_i[k-1].to_i < p_i[k].to_i && p_i[k].to_i < p_i[k+1].to_i) || (p_i[k].to_i < p_i[k-1].to_i && p_i[k+1].to_i < p_i[k].to_i)
        second.push(p_i[k])
    end
end
puts second.size
p second