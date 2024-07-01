def f(n)
    sum = 0
    
    while n > 0 do
        n, b = n.divmod(10)
        sum += b
    end
    
    sum
end

n = gets.to_i
puts n % f(n) == 0  ? "Yes" : "No"