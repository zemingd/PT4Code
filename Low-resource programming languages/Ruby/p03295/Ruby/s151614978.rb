def count(data)
    # p "data:", data
    
    if data.length <= 1 then
        return data.length
    else
        result = Array.new
        index = 0

        data.transpose.each do |item|
            if (item.inject(:+) > 0) then
                tmp = Array.new(data).delete_if do |tmp2|
                    tmp2[index] == 1
                end
            
                result.push(count(tmp) + 1)
            end
            index += 1
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

    tmp[i1-1, i2-i1] = Array.new(i2-i1, 1)

    result.push(tmp)
end

# p result

p count(result)