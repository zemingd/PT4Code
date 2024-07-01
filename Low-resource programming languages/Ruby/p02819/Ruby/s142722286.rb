x = gets.to_i

def is_prime(n)
    a = Math.sqrt(n).to_i + 1
    if n == 2
        return true
    elsif n % 2 == 0
        return false
    else
        i = 3
        while i < a
            if n % i == 0
                return false
            end
            i += 2
        end
        return true
    end
end

while true
    if is_prime(x)
        puts x
        break
    end
    x += 1
end