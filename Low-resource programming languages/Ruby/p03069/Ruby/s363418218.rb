n = gets.chomp.to_i
s = gets.chomp

stack = []
if (s[0] == '#') 
    stack.push(0)
end

tar = s[0]
cnt = 0

for i in 1..n do
    if (s[i-1]==tar)
        cnt += 1
    else
        tar = s[i-1]
        stack.push(cnt)
        cnt = 1
    end
end

stack.push(cnt)
if (s[n-1] == '.')
    stack.push(0)
end

size = stack.size

if (size == 2)
    p 0
else
    num = []
    for i in 1..size/2 do
        num.push(0)
    end
    2.step(size-1,2) do |i| 
        for j in 1..size/2 do
            if i/2 < j
                num[j-1] += stack[i-1]
            else
                num[j-1] += stack[i]
            end
        end
    end
    p num.min
end