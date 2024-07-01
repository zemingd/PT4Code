require 'pp'

n, k = gets.chomp!.split(" ").map(&:to_i)
a_n = gets.chomp!.split(" ").map(&:to_i)

digit_counter = {}
max_digit = k == 0 ? 0 : k.to_s(2).length
max_digit.times do |i|
    digit_counter[i] = 0
end

#pp digit_counter

a_n.each do |i|
    #puts sprintf("%020b", i)

    i.to_s(2).reverse.each_char.with_index(0) do |ch, index|
        if digit_counter[index]
            digit_counter[index] += ch.to_i
        end
    end
end

x = 0
digit_counter.each do |d, count|
    a = 
        if count > n / 2
            0
        elsif count == n / 2 && n % 2 == 0
            0
        else
            1
        end

    x += 2 ** d * a
end

ans = 0
a_n.each do |a|
    ans += (x ^ a)
end

puts ans
