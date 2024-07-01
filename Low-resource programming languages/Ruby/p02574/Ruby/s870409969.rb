require 'set'

$div = [nil, nil]
max = 1123456
for i in 2..500000
    if $div[i] == nil
        mag = 2
        while (i * mag < max)
            $div[i * mag] = i
            mag += 1
        end
    end
end

def prime_division(n)
    result = Set.new()
    buf = n
    while $div[buf]
        result << $div[buf]
        buf /= $div[buf]
    end
    result << buf
    result
end

N = gets.to_i
A = gets.split.map{|a| prime_division(a.to_i)}

cup = Set.new
hat = nil
pc = true
A.each do |primes|
    if pc && (cup & primes).size > 0
        pc = false
    end
    cup += primes
    hat = hat ? hat & primes : primes
end
sc = (hat.size == 0)

if pc
    puts 'pairwise coprime'
elsif sc
    puts 'setwise coprime'
else
    puts 'not coprime'
end