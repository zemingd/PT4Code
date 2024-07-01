# Bitter Alchemy
# 11:15-
N,x = gets.chomp.split(" ").map(&:to_i)
m = []
count = N
for i in 0..N-1 do
    m[i] = gets.chomp.to_i
    x = x - m[i]
end
count = count + (x / m.min)
puts count