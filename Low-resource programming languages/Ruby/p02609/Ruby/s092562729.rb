n = gets.chomp.to_i
x = gets.chomp
xi = x.to_i(2)
xc = x.count('1')

def exec(n)
  c = 0
  tmp = n
  while tmp != 0
    c += 1 if tmp % 2 == 1
    tmp /= 2
  end

  n % c
end

memo = {}
1.upto(n) do |n|
  tmp = n
  ans = 0
  while tmp != 0
    ans += 1
    tmp = exec(tmp)
  end

  memo[n] = ans
end
memo[0] = 0

solver = ->(i) do
  del = 2 ** (n-i-1)
  zero_p = x[i] == '0'
  num = zero_p ? xi + del : xi - del

  if num < 20
    memo[num]
  else
    if zero_p
      c = xc + 1
    else
      c = xc - 1
    end
    memo[num % c] + 1
  end
end

n.times do |i|
  puts solver.call(i)
end
