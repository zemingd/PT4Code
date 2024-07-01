X = gets.to_i
ans = 1
# 平方根の結果を切り捨て
(2..Math.sqrt(X).floor).each do |i|
    tmp = i
    while tmp <= X
        ans = tmp if ans < tmp
        tmp *= i
    end
end
puts ans