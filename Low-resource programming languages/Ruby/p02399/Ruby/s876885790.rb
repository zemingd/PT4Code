a, b = gets.chomp.split.map(&:to_i)
d = a / b
r = a % b
f = a.to_f / 2
printf("%d %d %.6f\n", d, r, f)
