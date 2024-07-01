input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
  
d = a/b
r = a%b
f = a.to_f/b
  
printf("%d %d %.5f\n", d , r , f) 