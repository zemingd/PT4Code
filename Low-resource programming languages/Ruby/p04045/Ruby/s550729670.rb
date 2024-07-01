N,K = gets.split.map(&:to_i)
Ds = gets.split.map(&:to_i)
nums = 10.times.map(&:to_i)

# 好きな数字
likes = nums - Ds
ans = 0

likes.each{|like|
    if N * like >= N
        ans = N * like
        break
    end
}

puts ans
