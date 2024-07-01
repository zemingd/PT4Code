n = gets.chomp!.to_i
a_n = gets.split.map(&:to_i)

digit_max = 61
memo = Array.new(digit_max)
digit_max.times do |i|
    memo[i] = [0, n]
end

digit_max.times do |d|
    n.times do |i|
        if a_n[i] & 1 == 1
            memo[d][0] += 1
            memo[d][1] -= 1
        end
        a_n[i] >>= 1
    end
end