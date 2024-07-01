n = gets.chomp.to_i
t,a = gets.split.map(&:to_f)
line = gets.split.map(&:to_f)

line = line.map{ |i| t - i * 0.006}
 tmp = (line[0] - a).abs
cnt = 0
for i in (1..(line.size-1))
    if tmp > (line[i] - a).abs
        tmp = line[i]
        cnt = i
    end
end
puts cnt + 1