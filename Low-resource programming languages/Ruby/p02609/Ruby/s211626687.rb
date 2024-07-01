n = gets.to_i
x = gets.chomp
@h = {[0, 0]=>0, [1, 1]=>1, [2, 1]=>1}
def popcount(u, v)
  return @h[[u, v]] if @h[[u, v]]
  a = u % v
  b = a.to_s(2).count('1')
  @h[[u, v]] = 1 + popcount(a, b)
end
m = x.count('1')
w = x.to_i(2)
n.times do |i|
  if x[i] == '0'
    y = w + 2 ** (n - i - 1)
    z = m + 1
  else
    y = w - 2 ** (n - i - 1)
    z = m - 1
  end
  puts popcount(y, z)
end