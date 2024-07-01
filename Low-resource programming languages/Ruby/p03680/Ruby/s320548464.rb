n = gets.chomp.to_i
btns = readlines.map(&:chomp).map(&:to_i)

cnt = - 1
next_btn = btns[0]
1.upto(n - 1) do |i|
    if next_btn == 2
        cnt = i
        break
    end
    next_btn = btns[next_btn - 1]
end

puts(cnt)