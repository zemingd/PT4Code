inputs = readlines

input=[]
for i in 1..inputs.size do
    input.push(inputs[i-1].split)
    input[i-1].map!(&:to_i)
end

a = input[0][0]
b = input[0][1]

coins = 0

if a > b
    coins = a + a-1
elsif a == b
    coins = a + b       
else
    coins = b + b-1
end

p coins