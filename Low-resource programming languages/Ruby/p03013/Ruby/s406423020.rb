def f(n)
  a = 1
  n.downto(1) do |i|
    a *= i
  end
  a
end

def calc(n)
  return 1 if n == 1

  a = 1
  v = 1
  while v * 2 <= n
    s = v + (n - v * 2)
    
    # sCv
    a += (f(s) / f(s - v)) / f(v)

    v += 1
  end
  a
end

n, m = gets.strip.split(" ").map(&:to_i)

as = []
before = -1
m.times do
  a = gets.to_i
  if before + 1 == a
    puts 0
    exit 0
  end
  before = a
  as << a
end

ans = 1
p = 0

while as.any?
  a = as.shift
  m = a - p - 1

  r = 
    if m == 0
      1
    else
      calc(m)
    end
    
  ans *= r

  p = a + 1
end

if p < n
  ans *= calc(n - p)
end

puts ans % 1000000007
  