n = gets.to_i

def divisor_8 n
    count = 0
    (1..n).each do |num|
        if n % num == 0
            count += 1
        end
    end
    return count == 8
end

count = 0
(1..n).each do |num|
    next if num.even?
    count += 1 if divisor_8(num)
end

puts count