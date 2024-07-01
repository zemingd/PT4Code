arr = Array.new(4).map{Array.new(3){Array.new(10, 0}}

n = gets.to_i

n.times{
b,f,r,v = gets.split.map(&:to_i)
arr[b-1][f-1][r-1] += v
}

for i in 0..3
for j in 0..2
for k in 0..9
puts " " + arr[i][j][k].to_s
end
end
if i != 3
puts "#" * 20
end
end





