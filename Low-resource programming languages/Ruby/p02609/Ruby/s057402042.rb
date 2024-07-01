n = gets.to_i
x = gets.chomp

def f(n)
  return 0 if n == 0
  f(n % n.to_s(2).count('1')) + 1
end

n.times do |i|
  xx = x.dup
  xx[i] = x[i] == '1' ? '0' : '1'
  puts f(xx.to_i(2))
end
