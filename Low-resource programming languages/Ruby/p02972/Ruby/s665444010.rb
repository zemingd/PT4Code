n = gets.chomp.to_i
a = [0] + gets.chomp.split(" ").map(&:to_i)
b = [0] * (n+1)

m = 0
(1..n).each do |i|
    i = n - i + 1
    j = i+i
    sum = 0
    while j <= n do
        sum += b[j]
        j += i
    end
    if (a[i] ^ (sum%2)) == 1
        m += 1
        b[i] = 1
    end
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