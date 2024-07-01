n = gets.to_i
x = gets.to_i(2)
M = Hash.new
M[0] = 0
def f(n)
  if M.has_key?(n)
    M[n]
  else
    c = 0
    x = n
    while x > 0
      c += x & 1
      x = x >> 1
    end
    M[n] = f(n % c) + 1
  end
end
n.times do |i|
  puts f(x ^ 1 << n - i - 1)
end
