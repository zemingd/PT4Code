def gcd(a, b)
        while a % b != 0
                work = b
                b = a % b
                a = work
        end
        b
end

n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
lcm = a[0]
a.each do |i|
        lcm = lcm * i / gcd(lcm, i)
end
lcm -= 1
f = 0
a.each do |i|
        f += lcm % i
end
puts f
