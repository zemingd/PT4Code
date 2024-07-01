n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
ans = 0
a.each do |b|
    if b == count + 1
        count += 1
    else
        ans += 1
    end
end
if ans == n
    puts -1
else
    puts ans
end