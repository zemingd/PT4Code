input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
printf("%d %d %4f", a / b, a % b, a / b.to_f)