x = gets.to_i

if x == 1
  puts '0 -1'
  exit
end

def root(x, n)
  r = 0
  a = 1 << (Math.log(x) / n / Math.log(2))
  while a > 0
    ra = r | a
    d = x - ra ** n
    return ra if d == 0
    r    = ra if d  > 0
    a >>= 1
  end
  return 0
end

puts [root(x - 1, 5), -1].join(' ')
