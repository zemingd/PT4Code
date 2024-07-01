data = gets
data = data.split(" ").map{|d|d.to_i}
a = data[0]
b = data[1]
if b % a == 0
  puts (a+b).to_s
else
  puts (b-a).to_s
end