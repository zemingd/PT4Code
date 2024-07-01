str = gets.to_s.split(' ')
a = str[0].to_i
b = str[1].to_i
c = str[2].to_i

minus = a - b 
res = c - minus
res = 0 if res.negative?

p res