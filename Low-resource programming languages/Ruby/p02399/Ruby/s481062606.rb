a,b= gets.split(' ').map(&:to_f)
printf("%d %d %f", a/b, a%b, a/b)