n = gets.chomp.to_i

ans = n
0.upto(n) do |i|
    tmp = 0
    t = i
    while t > 0
        tmp += t % 6
        t /= 6
    end
    t = n - i
    while t > 0
        tmp += t % 9
        t /= 9
    end
    ans = tmp if ans > tmp
end
puts ans
