require 'pp'

n = gets.chomp!.to_i

# 12のときだけ， 9,1,1,1と選ぶより 6 6 と選んだほうがよい
memo = [1, 12]

num = 6
while num <= 100000
    memo << num
    num *= 6
end


num = 9
while num <= 100000
    memo << num
    num *= 9
end

memo.sort!.reverse!
count = 0
memo.each do |num|
    while n >= num
        #puts "#{n}, #{num}"
        n -= num
        if num == 12
            count += 2
        else
            count += 1
        end
    end
end

puts count
