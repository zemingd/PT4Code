# 1118 のような、3 つ以上の同じ数字が連続して並んだ 4 桁の整数を 良い整数 とします。
# 4 桁の整数 N が与えられるので、N が 良い整数 かどうかを答えてください。

n = gets.chomp
result = false
2.times do |i|
    result = true if n[i] == n[i+1] && n[i] == n[i+2]
end
puts result ? "Yes" : "No"