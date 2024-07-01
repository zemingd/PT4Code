n = gets.chomp.to_i
a = [0] + gets.chomp.split(" ").map(&:to_i)
b = [0] * (n+1)

m = 0
(n..2).each do |i|
    if i <= n/2
        j = i
        b[i] = a[i]
        while j <= n do
            b[i] ^= b[j]
            j += i
        end
        m += 1 if b[i] == 1
    else
        if a[i] == 1
            b[i] = 1
            m += 1
        end
    end
end

if a[1] == 0 && (m % 2) == 1
    m += 1
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