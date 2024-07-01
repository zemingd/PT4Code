inputs = readlines

input=[]
for i in 1..inputs.size do
    input.push(inputs[i-1].split)
end

n = input[0][0].to_i
k = input[0][1].to_i
s = input[1][0].split("")

stack = []
if s[0] == "0"
    stack.push(0)
end
count = 0
tar = s[0]

for i in 1..n do 
    if tar != s[i-1] 
        tar = s[i-1]
        stack.push(count)
        count = 1
    else
        count += 1
    end
end

stack.push(count)
if s[n-1] == "0"
    stack.push(0)
end


sum = stack[0]
max = 1
point = 2*k+1
2.step(stack.size,2) do |i|
    sum += stack[i-1]
    sum += stack[i]
    if i > point
        sum -= stack[i-1-point]
        sum -= stack[i-point]
    end
    if sum > max
        max = sum 
    end
end
p max