def calc(x, p)
    min = 102
    ret = 102
    (0..101).each do |num|
        unless p.include?(num) then
            distance = (x - num).abs
            if min > distance then
                ret = num
                min = distance
            end
        end
    end

    return ret
end

X, N = gets.split.map(&:to_i)
if N == 0 then
    p = []
else
    p = gets.split.map(&:to_i)
end

puts calc(X, p)
