def is_prime? n
    2.upto Math.sqrt(n).ceil do |i|
        return false if n % i == 0
    end
    true
end

x = gets.to_i

x.upto Float::INFINITY do |n|
    if is_prime? n
        puts n
        break
    end
end