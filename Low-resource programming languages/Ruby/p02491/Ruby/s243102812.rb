a, b = gets.split(/\s/).map(&:to_i)


printf("%d %d %.5f\n", a/b, a%b, a*1.0/b)