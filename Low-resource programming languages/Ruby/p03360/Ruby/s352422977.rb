k = (x = `dd`.split.map &:to_i).pop
y = x.max
p x.inject(:+) - y + (y << k)