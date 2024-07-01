n = gets.to_i
takoyaki = gets.split.map(&:to_i)
ans = 0
for i in 0 .. n - 2 do for j in i + 1 .. n - 1 do ans += takoyaki[i] * takoyaki[j] end end
puts ans