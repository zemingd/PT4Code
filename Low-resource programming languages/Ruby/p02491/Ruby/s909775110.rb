inputLine = STDIN.gets
x = Array.new()

x = inputLine.split(" ")

x[0] = x[0].to_i
x[1] = x[1].to_i

print x[0] / x[1], " ", x[0] % x[1], " "
puts sprintf("%.5f", x[0].to_f / x[1].to_f)