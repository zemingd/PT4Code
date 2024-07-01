def count(data)
    # p "data:", data

    if data.length <= 1 then
        return data.length
    else
        result = Array.new
        for index in 0...data[0].length do
            tmp = Array.new(data)
            
            tmp.delete_if do |item|
                item[index] == 1
            end
            
            if tmp.length < data.length then
                result.push(count(tmp) + 1)
            end
        end
    end
    
    # p "result:", result
    return result.min
end

result = []
n, m = gets.chomp.split("\s").map(&:to_i)

for i in 0...m do
    tmp = Array.new(n-1, 0)
    i1, i2 = gets.chomp.split("\s").map(&:to_i)

    for j in i1...i2 do
        tmp[i1-1, i2-i1] = Array.new(i2-i1, 1)
    end

    result.push(tmp)
end

# p result

p count(result)