x = gets.chomp.to_i
i = 0
count = 0
max = 0
ans = 0
until ans > x
    ans = i ** 2
    if ans <= x
        max = [max,ans].max
    end
    i += 1
end
puts max