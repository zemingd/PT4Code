def check_otosidama(n, y)
  for i in 0..n do
    for j in 0..n-i do
      k = n - i - j
      return "#{i} #{j} #{k}" if (i * 10000 + j * 5000 + k * 1000 == y) && (i + j + k == n)
    end
  end
  "-1 -1 -1"
end

inputs = gets.split(' ').map(&:to_i)
n = inputs[0]
y = inputs[1]

p check_otosidama(n, y)