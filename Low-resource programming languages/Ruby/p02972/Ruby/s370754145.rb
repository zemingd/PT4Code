# WA

n = gets.chomp.to_i
a = [0] + gets.chomp.split(" ").map(&:to_i)
b = [0] * (n+1)

m = 0
(1..n).each do |i|
    i = n - i + 1
    if i <= n/2
        j = i
        while j <= n do
            b[i] ^= b[j]
            j += i
        end
        b[i] ^= a[i]
        m += 1 if b[i] == 1
    else
        if a[i] == 1
            b[i] = 1
            m += 1
        end
    end
    # puts "#{i}: #{m}"
end

puts m
if m > 0
    while m > 0 do
        print 1
        print " " if m > 1
        m -= 1
    end
    puts ""
end