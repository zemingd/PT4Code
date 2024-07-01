x = gets.to_i

m = 1
while x > 5 * m ** 4 + 10 * m ** 3 + 10 * m ** 2 + 5 * m + 1
    m += 1
end
m += 1

nums = (0..m).map{|it| it ** 5}
(0..m).to_a.combination(2).each{|a, b|
    if x == nums[a] + nums[b]
        puts [a, -b].join(' ')
        break
    elsif  x == nums[b] - nums[a]
        puts [b, a].join(' ')
        break
    end
}
