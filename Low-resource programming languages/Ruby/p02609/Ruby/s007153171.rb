class Integer
  def popcount
    to_s(2).count('1')
  end
end

def f(x)
  cnt = 0

  while x > 0
    x = x % x.popcount
    cnt += 1
  end

  cnt
end

N = gets.to_i
X = gets.chomp

N.times do |idx|
  ch = X[idx]

  if X[idx] == '1'
    X[idx] = '0'
  else
    X[idx] = '1'
  end

  puts f(X.to_i(2))
  X[idx] = ch
end
