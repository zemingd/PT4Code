def cnt(num)
  cnt = 0
  while num != 1
    num /= 2
    cnt += 1
  end
  return cnt
end

h =  gets.to_i

n = cnt(h)

if n - 1 == 0
  puts (2 ** n) + (2 ** (n - 1))
else
  puts (2 ** n) + (2 ** (n - 1)) + 1
end
