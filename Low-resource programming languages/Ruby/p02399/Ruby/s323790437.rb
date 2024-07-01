a, b = ARGF.gets.split.map(&:to_i)
d = a / b
r = a % b
f = (a / b).to_f
printf("%d %d %f\n", d, r, f)