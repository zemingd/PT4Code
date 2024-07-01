num = gets.split(' ').map(&:to_i)

gcd = num[0].gcd(num[1])
divisor = []

range = 1..gcd

range.each do |num|
    if divisor.length == 0
        divisor.push(num)
    
    elsif gcd % num == 0 

        divisor.each_with_index do |div, index|
            if div.gcd(num) == 1 
                if index == divisor.size - 1
                    divisor.push(num)
                end
            else
                break
            end
        end
    end
end

puts divisor.last