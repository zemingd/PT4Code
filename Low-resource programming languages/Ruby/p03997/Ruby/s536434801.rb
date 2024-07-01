num = []
while line = gets
    num << line.chomp.to_i
end
p (num[0] + num[1]) * num[2] / 2