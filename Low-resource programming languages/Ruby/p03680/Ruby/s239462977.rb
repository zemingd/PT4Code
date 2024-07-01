n = gets.chomp.to_i
btns = readlines.map(&:chomp).map(&:to_i)

cnt = - 1
next_btn = btns[0]
1.upto(n) do |i|
    next_btn = btns[next_btn - 1]
    if next_btn - 1 == 1
        cnt = i + 1
        break
    end
end

puts(cnt)