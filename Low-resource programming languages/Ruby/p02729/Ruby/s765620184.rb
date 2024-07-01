def f(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  else
    return num + f(num - 1)
  end
end

n, m = gets.split.map &:to_i
print (f(n-1) + f(m-1))
