n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)
count = 0
min = v[0].abs
n.times do |i|
    if v[i] < 0
      count+=1
    end
    if v[i].abs < min
        min = v[i].abs
    end
end
sum = 0
n.times do |i|
    sum += v[i].abs
end
if count%2 != 0 then sum -= min *2 end
puts sum