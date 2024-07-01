def f(n)
  if n < 10
    return n
  else
    return n % 10 + f(n / 10)
  end
end
while (x = gets.to_i) != 0
  puts f(x)
end