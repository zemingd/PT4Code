x = gets.to_i

def prime x
    return false if x == 2
    (2..(x-1)).each do |num|
        return true if x % num == 0
    end
    return false
end

while prime(x)
    x += 1
end

puts x