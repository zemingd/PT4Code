N = gets.chomp.to_i
a = Array.new(N){Array.new(N,2)}
d = Array.new(N,0)
for i in 0...N do
    m = gets.chomp.to_i
    for j in 0...m do
        str = gets.split
        b,c = str[0].to_i-1, str[1].to_i
        a[i][b] = c
    end
end
answer = 0
for i in 1...2**N do
    b = i
    c = 0
    for j in 0...N do
        d[j] = b%2
        c += b%2
        b /= 2
    end
    f = 1
    for j in 0...N do
        if d[j] == 1
            for k in 0...N do
                if a[j][k] != d[k] && a[j][k] != 2
                    f = 0
                end
            end
        end
    end
    if f == 1
        answer = c > answer ? c : answer
    end
end
puts answer