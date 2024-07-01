str = gets.split
N,M = str[0].to_i, str[1].to_i
a = Array.new(N){Array.new(2,0)}
b = Array.new(M+1,0)

for i in 0...N do
    str = gets.split
    x,y = str[0].to_i,str[1].to_i
    if M >= x
        a[i][0],a[i][1] = x,y
        b[x] = b[x]+1
    else
        b[0] = b[0]+1
    end
end

a.sort_by! {|x| [x[0], -x[1]]}
for i in 1..M do
    b[i] += b[i-1]
end

c = Array.new(0)
d = 0
answer = 0
max = 0
max_n = 0
for i in 1..M do
    if c.size > 0
        if b[i] != b[i-1]
            c.push(b[i-1])
        end
        max = 0
        max_n = 0
        for j in 0...c.size do
            if max < a[c[j]][1]
                max = a[c[j]][1]
                max_n = j
            end
        end
        answer += max
        c[max_n] += 1
        d = c[max_n]
        if d < a.size
            if a[d][0] != a[d-1][0]
                c.delete_at(max_n)
            end
        else
            c.delete_at(max_n)
        end
    elsif b[i] != b[i-1]
        c.push(b[i-1])
        answer += a[c[0]][1]
        c[0] += 1
        d = c[0]
        if d < a.size
            if a[d][0] != a[d-1][0]
                c.delete_at(max_n)
            end
        else
            c.delete_at(max_n)
        end
    end
end

puts answer