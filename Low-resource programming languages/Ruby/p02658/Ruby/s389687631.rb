n = gets.to_i
num = gets.split.map(&:to_i)
ans = 1
num.map {|n| ans *= n}
ans > 10 ^ 18 ? puts(-1) : puts(ans)