n=gets.to_i

def calc_(n,x)
  t = x
  t *= x while t <= n
  t /= x
  t
end

def solve_(n)
  return (n/6+n%6) if n < 9
  n9 = calc_(n,9)
  n6 = calc_(n,6)

  i = n / n9

  ret = 100_000
  0.upto(i) do |j|
    m = n
    m -= n9 * j
    k = m / n6
    m = m % n6
    count = solve_(m) + j + k
    ret = count if count < ret
  end
  ret
end

p solve_(n)