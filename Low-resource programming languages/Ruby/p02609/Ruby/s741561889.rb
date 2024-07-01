def popcount(n)
  n.to_s(2).count('1')
end

def func(n, h)
  if n == 0
    return 0
  else
    if h.has_key?(n)
      return  h[n]
    else
      m = popcount(n)
      c = func(n % m, h) + 1
      h[n] = c
      return c
    end
  end
end

n = gets.to_i
x = gets.chomp
h = {}
n.times do |i|
  y = x.dup
  if y[i] == '1'
    y[i] = '0'
  else
    y[i] = '1'
  end
  z = y.to_i(2)
  if h.has_key?(z)
    puts h[z]
  else
    h[z] = func(z, h)
    puts h[z]
  end
end