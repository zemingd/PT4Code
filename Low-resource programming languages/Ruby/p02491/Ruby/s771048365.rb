arry = gets.split{" "}
a = arry[0].to_f
b = arry[1].to_f
d = (a / b).to_i
r = (a % b).to_i
f = a / b
print "#{d} #{r} #{f}\n"