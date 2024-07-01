n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

sum = 0
pre = -1
a.each do |i|
    sum += b[i-1]
    if i - pre == 1
        sum += c[i-2]
    end
    pre = i
end
puts sum