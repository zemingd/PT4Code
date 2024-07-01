arr = Array.new(4){Array.new(3){Array.new(10, 0}}

n = gets.to_i
while n != 0 do
b,f,r,v = gets.split.map(&:to_i)
arr[b-1][f-1][r-1] += v
end
n -= 1
end 

for i in 0..3
for j in 0 ..2
for k in 0..9
puts " " + arr[i][j][r].to_s
end
if i != 3
puts "#" * 20
end
end
end




