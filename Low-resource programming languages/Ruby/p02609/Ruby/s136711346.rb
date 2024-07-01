n = gets.to_i
x = gets.chop.to_i(2)
n.times do |i|
  if x[n-i-1].zero?
    t = x + 2 ** (n-i-1)
  else
    t = x - 2 ** (n-i-1)
  end
  c = 0
  loop do
    break if t == 0

    t = t % t.to_s(2).count('1')
    c += 1
  end
  puts c
end