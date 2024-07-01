require "scanf"

n = gets.scanf("%d")[0]

c = 0

tmp = n

while tmp > 0 do
    c += tmp % 10
    tmp /= 10
end

puts "yes" if n % c==0
puts "no" if !(n % c==0)