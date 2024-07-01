S =[]
line = gets.split(" ").map {|n| n}
top = 0
i = 0

def push(x)
    top +=1
    S[top] = x
end

def pop1
    top -=1
    return S[top+1]
end

while i < line.count
    if line[i] == "+"
        a = S.pop
        b = S.pop
        S.push (a + b)
    elsif line[i] == "-"
        a = S.pop
        b = S.pop
        S.push (b - a)
    elsif line[i] == "*"
        a = S.pop
        b = S.pop
        S.push (a * b)
    else
        S.push(line[i].to_i)
    end
    i =i+1
end

puts S.pop
