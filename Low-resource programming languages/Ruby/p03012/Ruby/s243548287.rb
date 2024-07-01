N = gets.to_i
W = gets.split.map(&:to_i)

sum = W.inject(:+)
middle = sum/2
x = 0
index = 0
W.each do |w|
    x += w
    if middle <= x then
        left = x
        right = sum - x
        a = (left - right).abs
        left -= w
        right += w
        b = (left - right).abs
        puts [a,b].min
        break
    end
    index += 1
end