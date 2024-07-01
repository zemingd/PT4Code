a = readline.split.map(&:to_i)
a = a.sort
a = a[0] + a[1] + 10 * a[2]
print(a)