K = gets.to_i
sum = 0

K.times do |i|
    K.times do |j|
        K.times do |k|
            sum += (k + 1).gcd((i + 1).gcd(j + 1))
        end
    end
end

puts sum