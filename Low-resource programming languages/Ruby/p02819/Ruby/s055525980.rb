x = gets.to_i

def isPrime x
    sqrt = Integer.sqrt(x)
    (2..sqrt).each do |n|
        if (x % n) == 0
            return false
        end
    end
    return true
end

while (isPrime x) == false
    x += 1
end

p x