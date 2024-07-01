a,b = gets.split(' ').map(&:to_i)
ans = 0
(1..2).each do |n|
    if a >= b 
        ans +=a
        a = a-1
    elsif a < b
        ans +=b
        b = b-1
    end
end
puts ans
