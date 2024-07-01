a, b = STDIN.gets.split.map(&:to_i)


c = a / b

d = a % b

e = a / b.to_f


puts sprintf("%d %d %.5f",c,d,e)