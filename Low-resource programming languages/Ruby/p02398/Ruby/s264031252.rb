x = gets()
x = x.split
i = 0
n = 0
for i in x[0].to_i..x[1].to_i do
if x[2].to_i % i == 0
    n += 1
end
end
puts n

