class Array
    def gcd
        inject(:gcd)
    end
end

k = gets.rstrip.to_i

total = 0
a = b = c = k

a.times do |ai|
    ai += 1
    break if ai > k
    b.times do |bi|
        bi += 1
        break if bi > k
        c.times do |ci|
            ci += 1
            break if ci > k
            total += [ai, bi, ci].gcd
        end
    end
end

puts total