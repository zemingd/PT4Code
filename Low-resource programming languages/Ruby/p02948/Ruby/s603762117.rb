n,m=gets.chomp.split(" ").map(&:to_i)

inputs = {}
(0..(n-1)).each do |i|
    a,b=gets.chomp.split(" ").map(&:to_i)
    next if m < a
    if inputs[a]
        inputs[a].push(b)
    else
        inputs[a] = [b]
    end
end

inputs.each do |key, value| 
    inputs[key] = value.sort.reverse()
end

ans = 0
ret = []
(1..m).each do |day|
    if inputs[day]
        bs = inputs[day]
        bs.each do |b|
            index = ret.bsearch_index {|x| x<=b } 
            if index
                break if index >= m -day+1
                ret.insert(index, b)
            else
                ret.push(b)
            end
        end
    end
    ans += ret.shift if ret[0]
end

puts ans

