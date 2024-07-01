n, k = gets.chomp.split(" ").map(&:to_i)
ans = k
if n >= 2
    (n-1).times do |i|
        ans *= (k-1)
    end
else
    ans = k
end
puts ans
