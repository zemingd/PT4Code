str=gets.chomp.split(" ")
a=str[0].to_i
b=str[1].to_i
printf("%d %d %f",a/b,a%b,a/b.to_f)