a, b = gets.split.map(&:to_i)
d = a / b
l = a % b
f = a.to_f / b.to_f
printf("%d %d %.5f\n", d, l, f)
