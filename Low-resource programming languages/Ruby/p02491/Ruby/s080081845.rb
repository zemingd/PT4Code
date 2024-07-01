a, b = gets.chomp.split.map(&:to_i)
printf("%d %d %f\n", a / b, a % b, a.to_f / b)