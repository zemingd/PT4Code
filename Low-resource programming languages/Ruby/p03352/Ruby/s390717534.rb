require "prime"
x = gets.chomp.to_i
ans = 1

(x+1).times do |i|
    next if i == 0
    res = Prime.prime_division(i)
    ans = ans < i ? i : ans if res.size == 1 && res[0][1] >= 2
end
puts ans