n = gets.to_i
x = gets.chomp.chars
@h = {1=>1, 2=>1, }
def popcount(i)
  return @h[i] if @h[i]
  c = 0
  j = i
  b = j.to_s(2).count('1')
  while j > 0
    c += 1
    j %= b
    b = j.to_s(2).count('1')
  end
  @h[i] = c
end
n.times do |i|
  y = x.dup
  if y[i] == '0'
    y[i] = '1'
  else
    y[i] = '0'
  end
  puts popcount(y.join('').to_i(2))
end