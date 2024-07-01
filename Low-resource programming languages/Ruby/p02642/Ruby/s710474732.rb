N = gets.to_i
ary = gets.split.map(&:to_i).sort
cnt = 0
0.upto(N-1) do |i|
    f = true
    0.upto(i-1) do |j|
        if ary[i] % ary[j] == 0
            f = false
            break
        end
    end
    cnt += 1 if f
end
puts cnt