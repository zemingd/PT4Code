line = gets.split(' ')
a = line[0].to_i
b = line[1].to_i
x = line[2].to_i

ans = (b - a).div(x)

ans += 1 if a % x == 0
ans += 1 if b % x == 0
ans -= 1 if a % x == 0 && b % x == 0
p ans