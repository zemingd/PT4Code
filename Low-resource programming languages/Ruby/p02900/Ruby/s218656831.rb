require 'prime'

num = gets.split(' ').map(&:to_i)

gcd = num[0].gcd(num[1])
divisor = [1]

Prime.each(gcd) do |num|
    if gcd % num == 0 
        divisor.push(num)
    end
end

puts divisor.size