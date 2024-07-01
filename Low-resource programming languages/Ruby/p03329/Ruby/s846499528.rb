require 'pp'

n = gets.chomp!.to_i

# 12のときだけ， 9,1,1,1と選ぶより 6 6 と選んだほうがよい
memo = []

num = 36
while num <= 100000
    memo << num
    num *= 6
end


num = 81
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
        count += 1
    end
end

table = {
    1  => 1, 2  => 2, 3  => 3, 4  => 4, 5  => 5,
    6  => 1, 7  => 2, 8  => 9, 9  => 1, 10 => 2,
    11 => 3, 12 => 2, 13 => 3, 14 => 4, 15 => 2,
    16 => 3, 17 => 4, 18 => 3, 19 => 3, 20 => 4,
    21 => 5, 22 => 6, 23 => 5, 24 => 3, 25 => 4,
    26 => 5, 27 => 3, 28 => 4, 29 => 5, 30 => 4,
    31 => 5, 32 => 6, 33 => 4, 34 => 5, 35 => 6,
}

#puts n
#puts count
#puts table[n]
puts count + table[n]
