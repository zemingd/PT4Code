N,K = gets.split.map(&:to_i)
Ds = gets.split.map(&:to_i)
nums = 10.times.map(&:to_i)

# 好きな数字
likes = nums - Ds
ans = 0

likes.each{|like|
    puts "like:#{like} N * like:#{N * like}"
    calc = N * like
    unless calc.to_s.include?(Ds.to_s)
        if calc >= N
            ans = calc
            break
        end
    end
}

puts ans
