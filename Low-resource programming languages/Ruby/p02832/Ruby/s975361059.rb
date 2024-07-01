n = gets.to_i
a = gets.split.map(&:to_i)
tmp = 1
ans = 0

a.each do |i|
    if i == tmp
        tmp += 1
    else
        ans += 1
    end
end

p tmp == 1 ? -1 : ans
