n = gets.to_i

digits = 1
while 10 ** digits <= n
    digits += 1
end

answer = 0
(3...digits).each{|d|
    answer += 3 ** d - 3 * (2 ** d) + 3
}

[3, 5, 7].repeated_permutation(digits){|nums|
    val = nums.inject(0){|acc, it| acc * 10 + it }
    break if val > n
    if [3, 5, 7].all?{|it| nums.include?(it)}
        answer += 1
    end
}
puts answer
