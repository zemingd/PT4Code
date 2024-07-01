require 'scanf'
input= scanf("%d %d")
a=input[0]
b=input[1]
c=a.to_f/b.to_f
printf("%d %d %.5f\n",a/b,a%b,c)