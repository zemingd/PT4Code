N = gets.to_i
ary = gets.chomp.split(" ").map(&:to_i)
countary = Array.new(N, 0)
ans = 0

ary.each do |i|
    countary[i - 1] += 1 
end

countary.each do |a|
    if a >= 2
        ans += a * (a - 1) / 2
    end
end

N.times do |i|
    if countary[ary[i] - 1] >= 2
        puts ans - countary[ary[i] - 1] + 1
    else
        puts ans
    end
end

