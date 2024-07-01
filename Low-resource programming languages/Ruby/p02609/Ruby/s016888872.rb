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

0.upto(n - 1) do |index|
  y = x.dup
  y[index] = y[index]  == '0' ? '1' : '0'
  y_int = y.to_i(2)
  c = y.count('1')
  if c == 0
    puts 1
  else
    puts f(y_int % c) + 1
  end
end
