
b1 = [Array.new(10,0),Array.new(10,0),Array.new(10,0)]
b2 = [Array.new(10,0),Array.new(10,0),Array.new(10,0)]
b3 = [Array.new(10,0),Array.new(10,0),Array.new(10,0)]
b4 = [Array.new(10,0),Array.new(10,0),Array.new(10,0)]
all = [b1,b2,b3,b4]

n = gets.to_i

for i in 1..n

notice = gets.split.map(&:to_i)
b = notice[0]-1
f = notice[1]-1
r = notice[2]-1
v = notice[3]
all[b][f][r] += v

end


for j in 1..3

for i in 1..3
puts " "+all[j-1][i-1].join(" ")
end

puts ("#" * 20)

end

for i in 1..3
puts " "+all[3][i-1].join(" ")
end



