n = gets.to_i
x = gets.chomp.split('').map &:to_i

f = Array.new(n+1, nil)

def f(counter, n)
  popcount = n.to_s(2).count('1')
  n = n % popcount
  counter += 1
  return counter if n == 0
  f(counter, n)
end

1.upto(n) do |i|
  y = x.dup
  y[i-1] = x[i-1] == 1 ? 0 : 1
  counter = f(0, y.join.to_i(2))
  puts counter
end
