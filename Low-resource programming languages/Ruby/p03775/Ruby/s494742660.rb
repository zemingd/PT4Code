def digitlen n
  i = 1
  while n != 0
    n /= 10
    i += 1
  end
  i - 1
end

n = gets.to_i
min = digitlen n
i = 2
while i * i <= n
  if n % i == 0
    min = [min, [digitlen(i), digitlen(n / i)].max].min
  end
  i += 1
end
puts min
