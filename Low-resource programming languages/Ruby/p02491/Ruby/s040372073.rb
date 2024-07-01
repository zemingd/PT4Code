a,b= gets.split(" ").map(&:to_i)

d = a/b
r = a%b
f = (1.0 * a / b).round(6)
printf"#{d} #{r} #{f}"