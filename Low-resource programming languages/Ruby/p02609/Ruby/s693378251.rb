n = gets.to_i
x = gets.chomp
M = Hash.new
M[0] = 0
def f(n)
  unless M.has_key?(n)
    M[n] = f(n % n.to_s(2).count('1')) + 1
  end
  M[n]
end
n.times do |i|
  xx = x.dup
  xx[i] = x[i] == '1' ? '0' : '1'
  puts f(xx.to_i(2))
end
p M
