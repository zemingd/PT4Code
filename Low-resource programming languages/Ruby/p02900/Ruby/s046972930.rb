a, b = gets.split.map(&:to_i)
n = a.gcd(b)

current = 1
primes = []
answer = 1
while n != 1
    current += 1
    if not primes.any?{|p| current % p == 0}
        primes.push current
        if n % current == 0
            answer += 1
            while n % current == 0
                n = n / current
            end
        end
    end
end

puts answer
