num = gets.split{" "}
a = num[0].to_f
b = num[1].to_f
d = (a / b).to_i
r = (a % b).to_i
f = a / b
puts "#{d} #{r} #{"%.9f"%(f)}"