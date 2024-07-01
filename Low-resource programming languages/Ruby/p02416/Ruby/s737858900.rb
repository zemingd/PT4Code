while true
    n = gets.to_i
    break if n == 0
    
    sum = 0
    while n > 0
        sum += n%10
        n /= 10
    end
    
    puts sum
end