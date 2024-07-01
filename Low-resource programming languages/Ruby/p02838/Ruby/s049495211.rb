#require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map!(&:to_i)

digit_max = a_n.max.to_s(2).length
memo = Array.new(digit_max, 0)

a_chs = []
a_n.each_with_index do |a, i|
    a_ch = a.to_s(2).chars.reverse!
    a_chs << a_ch
    a_ch.each_with_index do |ch, dig|
        if ch == "1"
            memo[dig] += 1
        end
    end  
end

#pp a_chs
#pp memo

count = Array.new(digit_max, 0)
a_chs.each do |a_ch|
    digit_max.times do |dig|
        ch = a_ch[dig] || '0'
        if ch == '1'
            #pp (n - memo[dig])
            count[dig] += (n - memo[dig])
        else
            #pp (memo[dig])
            count[dig] += (memo[dig])
        end
    end
end

MOD = 10 ** 9 +7
sum = 0
count.each_with_index do |cnt, digit|
    sum += ((2 ** (digit)) * cnt) / 2
    sum = sum % MOD
end

puts sum
