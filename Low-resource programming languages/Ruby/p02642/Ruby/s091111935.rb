n = gets.to_i
a = gets.split(' ').map(&:to_i)
hoge = []
for i in 0..n-1 do
  ans = true
  for j in 0..n-1 do
    next if i == j || !ans
    break ans = false if a[i] % a[j] == 0
  end
  hoge << i+1 if ans
end
puts hoge.length