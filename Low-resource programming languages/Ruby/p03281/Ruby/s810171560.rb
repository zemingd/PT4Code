n=gets.to_i
i=0
ret=0
def factor_sub(n, m)
    c = 0
    while n % m == 0
      c += 1
      n /= m
    end
    return c, n
  end
  
  def factorization(n)
    buff = []
    c, m = factor_sub(n, 2)
    buff.push [2, c] if c > 0
    x = 3
    while x * x <= m
      c, m = factor_sub(m, x)
      buff.push [x, c] if c > 0
      x += 2
    end
    buff.push [m, 1] if m > 1
    buff
  end
def hoge(n)
    factorization(n).reduce(1){|m,xs|m*=xs[1]+1}
end

while(i<=n/2) do
    a=i*2+1
    if (hoge(a)==8)
        ret+=1
    end
    i+=1
end
p ret