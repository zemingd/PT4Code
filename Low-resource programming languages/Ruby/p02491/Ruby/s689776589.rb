a, b = gets.chomp.split(" ").map(&:to_i)
d = a / b
r = a % b
f = a * 1.0 / b
printf("%d %d %.5f\n", d, r, f)