N, *ABC = gets.split.map(&:to_i)
ls = N.times.map{gets.to_i}

ans = 10**18
(1<<(2*N)).times do |bits|
    as = Array.new(3){[]}
    N.times do |i|
        if bits%4 < 3
            as[bits%4].push(ls[i])
        end
        bits /= 4
    end
    next if as.any?{|arr| arr.size == 0}
    cost = 0
    3.times do |i|
        cost += (as[i].size - 1) * 10
        cost += (ABC[i] - as[i].inject(:+)).abs
    end
    ans = cost if ans > cost
end
puts ans