def dist(x, y)
  if y == -x then
    return 1
  end

  if y >= x then
    return y - x
  else
    return -1
  end
end

def calc(v)
  d = 0
  (1...v.size).each do |i|
    dd = dist(v[i - 1], v[i])
    return -1 if dd < 0
    d += dd
  end
  return d
end

def main(argv)
  (x, y) = gets.chomp.split(' ').map(&:to_i)

  min = 1e+10.to_i
  [
    [x, y],
    [x, -x, y],
    [x, -y, y],
    [x, -x, -y, y],
    [x, -y, -x, y]
  ].each do |v|
    d = calc(v)
    min = [d, min].min if d >= 0
  end

  puts min.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end