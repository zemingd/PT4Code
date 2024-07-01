n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
for i in 0..n-1
  temp = 0
  while a[i]%2 == 0
    temp += 1
    a[i] /= 2
  end
  ans += temp
end
puts ans