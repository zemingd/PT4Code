a, b = gets.split.map(&:to_i)

d, r = a.divmod(b)
f = a.to_f / b

printf("%d %d %6.5f\n", d, r, f)