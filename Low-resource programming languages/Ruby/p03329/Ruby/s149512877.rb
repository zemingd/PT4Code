def rec(num, d)
    num == 0 ? 0 : num % d + rec(num/d, d)
end

N = gets.to_i
ans = 10**18
(0..N).each do |i|
    j = N - i
    ans = [ans, rec(i, 6) + rec(j, 9)].min
end
puts ans