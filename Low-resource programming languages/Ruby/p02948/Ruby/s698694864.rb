n,m=gets.chomp.split(" ").map(&:to_i)

ret = Array.new(m, 0) # [最終日, .... , 最初の日]

array = {}
(1..n).each do |i|
    a,b=gets.chomp.split(" ").map(&:to_i)
    if m >= a
        tmp = nil
        ((a-1)..m-1).each do |i| 
            if tmp == nil && ret[i] < b
                tmp = b
            end
            if tmp
                next if ret[i] >= tmp
                tmp = ret[i]
                ret[i] = b
                b = tmp
                break if tmp == 0
            end
        end
    end
end

puts ret.reduce(&:+)
