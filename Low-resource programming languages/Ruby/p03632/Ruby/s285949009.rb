a, b, c, d = gets.split.map(&:to_i)
s = [a, c].max
t = [b, d].min
p (s<t) ? t - s : 0
