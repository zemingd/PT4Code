x,k,d = gets.chomp.split(' ').map(&:to_i)
x = x.abs
closest_1 = x%d
ans = x
if x/d > k
    ans -= k*d
else
    k -= x/d
    if k.even?
        ans = closest_1
    else
        ans = [(closest_1-d).abs,(closest_1+d).abs].min
    end
end

puts ans