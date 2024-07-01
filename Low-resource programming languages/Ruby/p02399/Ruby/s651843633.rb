input = gets.split(" ")
a, b = input[0].to_i, input[1].to_i
printf("%d %d %f\n", a/b, a%b, a.to_f/b)
