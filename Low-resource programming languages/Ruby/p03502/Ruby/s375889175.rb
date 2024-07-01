def sum_of_digits(n)
    r = 0
    while n > 0
        r += n % 10
        n /= 10
    end
    return r
end

num = gets.to_i

sum = sum_of_digits(num)
binding.pry
puts (num % sum == 0 ? 'Yes' : 'No')