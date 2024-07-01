n = gets.chomp.to_i
s = gets.chomp

stack = []
if (s[0] == '#') 
    stack.push(0)
end

tar = s[0]
cnt = 0
min = 0

for i in 1..n do
    if (s[i-1]==tar)
        cnt += 1
    else
        if (tar == ".") 
            min += cnt
        end
        tar = s[i-1]
        stack.push(cnt)
        cnt = 1
    end
end

stack.push(cnt)
if (s[n-1] == '.')
    stack.push(0)
end
min -= stack[0]

now = min
1.step(stack.size-2,2) do |i|
    now += stack[i]
    now -= stack[i+1]
    if (min > now)
        min = now
    end
end

p min
