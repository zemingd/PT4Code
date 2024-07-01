def sum_digit(n)
    r = 0
    while n > 0
        r += n % 10
        n /= 10
    end
    return r
end

n = gets.to_i
puts n % sum_digit(n) == 0 ? 'Yes' : 'No'