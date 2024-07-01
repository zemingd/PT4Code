n,a,b=gets.split.map(&:to_i)
p (b - a) % 2 == 0 ? (b - a) / 2 : [n - a, b - 1].min
