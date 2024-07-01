class Integer
  def popcount
    to_s(2).count('1')
  end
end

def f(n)
  c = 0
  while n > 0
    n %= n.popcount
    c += 1
  end
  c
end

cache = []

1.upto(200001) do |n|
  cache[n] = f(n)
end

n = gets.to_i
x = gets.chomp
x_int = x.to_i(2)
base_popcount = x.count('1')

0.upto(n - 1) do |index|
  y = x.dup
  popcount = base_popcount
  y_int = x_int
  if y[index] == '0'
    y_int += (1 << n - index - 1)
    popcount += 1
  else
    y_int -= (1 << n - index - 1)
    popcount -= 1
  end
  if popcount == 0
    puts 1
  else
    puts((cache[y_int % popcount] || 0) + 1)
  end
end
