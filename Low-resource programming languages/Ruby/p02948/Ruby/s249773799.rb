n,m=gets.chomp.split(" ").map(&:to_i)

ret = Array.new(m, 0) # [最終日, .... , 最初の日]

array = {}
(1..n).each do |i|
    a,b=gets.chomp.split(" ").map(&:to_i)
    if m >= a
        target = nil
        ((a-1)..m-1).each do |i| 
            if ret[i] < b
                target = i
                break
            end
        end
        if target
            tmp = b
            (target..(m-1)).each do |i|
                next if ret[i] >= b
                tmp = ret[i]
                ret[i] = b
                b = tmp
                break if tmp == 0
            end
        end
    end
end

puts ret.reduce(&:+)
