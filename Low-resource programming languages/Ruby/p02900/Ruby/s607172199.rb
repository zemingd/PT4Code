A, B = gets.split(" ").map(&:to_i)
$gcd = A.gcd(B)

def divisor(num1, num2)
    result = []
    i = 1
    while i <= $gcd do
        remainder = (num1 % i) + (num2 % i)
        if remainder == 0
            result << i
        end
        i += 1
    end 
    return result
end

commons = divisor(A, B)
commons.delete(1)
ans = [1]
commons.size.times do |i|
    count = 0
    ans.each do |a|
        if commons[i].gcd(a) == 1
            count += 1
        end
        ans << commons[i] if count == ans.size
    end
end

puts ans.size
