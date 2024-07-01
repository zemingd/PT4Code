def calc(a, b, c, aa, bb, cc)
    [(aa - a).abs + (bb - b).abs + (cc - c).abs,
     (aa - a).abs + (bb - c).abs + (cc - b).abs,
     (aa - b).abs + (bb - a).abs + (cc - c).abs,
     (aa - b).abs + (bb - c).abs + (cc - a).abs,
     (aa - c).abs + (bb - a).abs + (cc - b).abs,
     (aa - c).abs + (bb - b).abs + (cc - a).abs].min
end

n, a, b, c = gets.split.map(&:to_i)
lengths = n.times.map{ gets.to_i }

arr = [0, 1, 2, 3]
(n-1).times do
    arr = arr.product([0,1,2,3]).collect{ |set| set.flatten }
end

ans = 10000000
arr.select{ |set| set.include?(1) && set.include?(2) && set.include?(3) }.each do |set|
    aa = 0
    bb = 0
    cc = 0
    count = [0, 0, 0]
    set.each_with_index do |len, i|
        if len == 1
            aa += lengths[i]
            count[len - 1] += 1
        elsif len == 2
            bb += lengths[i]
            count[len - 1] += 1
        elsif len == 3
            cc += lengths[i]
            count[len - 1] += 1
        end 
    end
    total = calc(a, b, c, aa, bb, cc) + (count.reduce(:+) - 3) * 10
    if ans > total
        ans = total
    end
end
puts ans
    