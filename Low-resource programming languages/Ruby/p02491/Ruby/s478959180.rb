#10008 : A/B problem
#wrong answer

input = gets.split(" ")
a=input[0].to_i
b=input[1].to_i

d = a/b
r = a%b
f = (a.to_f/b.to_f)

printf("%d %d %.8f\n", d, r, f)