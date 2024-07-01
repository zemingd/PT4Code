num = []
num = gets.split.map(&:to_i)
k = gets.to_i

index =  num.index(num.max)
for i in 0...k do
    num[index] *= 2
end

p num[0] + num[1] + num[2]
