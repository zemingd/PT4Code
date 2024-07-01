S = gets.chomp
a = Array.new(26){Array.new(0)}

for i in 0...S.size do
    a[S[i].ord-97].push(i)
end

T = gets.chomp
b = 0
c = -1
s = 0
for i in 0...T.size do
    s = T[i].ord-97
    if a[s].empty?
        puts "-1"
        exit
    elsif a[s].last > c
        if a[s][0] > c
            c = a[s][0]
        else
            l = 0
            r = a[s].size-1
            o = (l+r)/2
            while r-l > 1
                if o > c
                    r = o
                else
                    l = o
                end
                o = (l+r)/2
            end
            c = a[s][r]
        end
    else
        b += 1
        c = a[s][0]
    end
end
answer = (b*S.size)+c+1
puts answer