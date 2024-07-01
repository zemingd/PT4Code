def count(data)
    # p "data:", data
    
    cut = Array.new
    trans = data.transpose

    for i in 0...trans.length do
        cut[i] = trans[i].inject(:+)
    end

    tmp = Array.new(data)
    index = cut.index(cut.max)

    tmp.delete_if do |item|
        item[index] == 1
    end

    if tmp.length == 0 then
        return 1
    else
        return count(tmp) + 1
    end
end

result = []
n, m = gets.chomp.split("\s").map(&:to_i)

for i in 0...m do
    tmp = Array.new(n-1, 0)
    i1, i2 = gets.chomp.split("\s").map(&:to_i)

    tmp[i1-1, i2-i1] = Array.new(i2-i1, 1)

    result.push(tmp)
end

# p result

p count(result)