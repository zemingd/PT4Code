str = gets.split
H,W = str[0].to_i, str[1].to_i
a = Array.new(H){Array.new(W)}
b = Array.new(H){Array.new(W,0)}
for i in 0...H do
    str = gets.chomp
    for j in 0...W do
        a[i][j] = str[j]
    end
end

i = 0
x = 0
y = 0
f = 0
while f == 0
    x = i % W
    y = i / W
    if a[x][y] == "."
        f = 1
        b[x][y] = -1
    end
    i += 1
end

s = Array.new(0)
t = Array.new(0)
if x > 0
    if a[x-1][y] == "."
        s.push(x-1)
        s.push(y) 
    end
end
if y > 0
    if a[x][y-1] == "."
        s.push(x1)
        s.push(y-1) 
    end
end
if x < H-1
    if a[x+1][y] == "."
        s.push(x+1)
        s.push(y) 
    end
end
if y < W-1
    if a[x][y+1] == "."
        s.push(x)
        s.push(y+1) 
    end
end
i = 1
while !s.empty? || !t.empty?
    if i % 2 == 1
        while !s.empty?
            y = s.pop
            x = s.pop
            b[x][y] = i
            if x > 0
                if a[x-1][y] == "." && b[x-1][y] == 0
                    t.push(x-1)
                    t.push(y) 
                end
            end
            if y > 0
                if a[x][y-1] == "." && b[x][y-1] == 0
                    t.push(x)
                    t.push(y-1) 
                end
            end
            if x < H-1
                if a[x+1][y] == "." && b[x+1][y] == 0
                    t.push(x+1)
                    t.push(y) 
                end
            end
            if y < W-1
                if a[x][y+1] == "." && b[x][y+1] == 0
                    t.push(x)
                    t.push(y+1) 
                end
            end
        end
    else
        while !t.empty?
            y = t.pop
            x = t.pop
            b[x][y] = i
            if x > 0
                if a[x-1][y] == "." && b[x-1][y] == 0
                    s.push(x-1)
                    s.push(y) 
                end
            end
            if y > 0
                if a[x][y-1] == "." && b[x][y-1] == 0
                    s.push(x)
                    s.push(y-1) 
                end
            end
            if x < H-1
                if a[x+1][y] == "." && b[x+1][y] == 0
                    s.push(x+1)
                    s.push(y) 
                end
            end
            if y < W-1
                if a[x][y+1] == "." && b[x][y+1] == 0
                    s.push(x)
                    s.push(y+1) 
                end
            end
        end
    end 
    i += 1
end
max = 0
c = []
for i in 0...H do
    for j in 0...W do
        max = max < b[i][j] ? b[i][j] : max
        f = 0
        if i > 0
            if a[i-1][j] == "." && b[i-1][j] > b[i][j]
                f = 1
            end
        end
        if j > 0
            if a[i][j-1] == "." && b[i][j-1] > b[i][j]
                f = 1
            end
        end
        if i < H-1
            if a[i+1][j] == "." && b[i+1][j] > b[i][j]
                f = 1
            end
        end
        if j < W-1
            if a[i][j+1] == "." && b[i][j+1] > b[i][j]
                f = 1
            end
        end
        if f == 0 && b[i][j] != -1
            c.push(i)
            c.push(j)
        end
    end
end
while !c.empty?
    d = Array.new(H){Array.new(W,0)}
    y = c.pop
    x = c.pop
    d[x][y] = -1
    if x > 0
        if a[x-1][y] == "."
            s.push(x-1)
            s.push(y) 
        end
    end
    if y > 0
        if a[x][y-1] == "."
            s.push(x)
            s.push(y-1) 
        end
    end
    if x < H-1
        if a[x+1][y] == "."
            s.push(x+1)
            s.push(y) 
        end
    end
    if y < W-1
        if a[x][y+1] == "."
            s.push(x)
            s.push(y+1) 
        end
    end
    i = 1
    while !s.empty? || !t.empty?
        if i % 2 == 1
            while !s.empty?
                y = s.pop
                x = s.pop
                d[x][y] = i
                if x > 0
                    if a[x-1][y] == "." && d[x-1][y] == 0
                        t.push(x-1)
                        t.push(y) 
                    end
                end
                if y > 0
                    if a[x][y-1] == "." && d[x][y-1] == 0
                        t.push(x)
                        t.push(y-1) 
                    end
                end
                if x < H-1
                    if a[x+1][y] == "." && d[x+1][y] == 0
                        t.push(x+1)
                        t.push(y) 
                    end
                end
                if y < W-1
                    if a[x][y+1] == "." && d[x][y+1] == 0
                        t.push(x)
                        t.push(y+1) 
                    end
                end
            end
        else
            while !t.empty?
                y = t.pop
                x = t.pop
                d[x][y] = i
                if x > 0
                    if a[x-1][y] == "." && d[x-1][y] == 0
                        s.push(x-1)
                        s.push(y) 
                    end
                end
                if y > 0
                    if a[x][y-1] == "." && d[x][y-1] == 0
                        s.push(x)
                        s.push(y-1) 
                    end
                end
                if x < H-1
                    if a[x+1][y] == "." && d[x+1][y] == 0
                        s.push(x+1)
                        s.push(y) 
                    end
                end
                if y < W-1
                    if a[x][y+1] == "." && d[x][y+1] == 0
                        s.push(x)
                        s.push(y+1) 
                    end
                end
            end
        end 
        i += 1
    end
    i -= 1
    max = max < i ? i : max
end
puts max