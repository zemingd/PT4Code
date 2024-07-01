n = gets.to_i
d = gets.split.map(&:to_i)
if d[0] != 0
    ans = 0
else
    d.sort!
    len = d.length
    c = 1
    now = 1
    prev = 0
    ans = 1
    1.upto(len-2) do |i|
        if d[i] == now
            if d[i] == d[i+1]
                c += 1
                ans = ans * (prev**c) if i == len-2
            else
                ans = ans * (prev**c) if now != 1
                ans = ans * d[i+1] if i == len-2 
                prev = c
                c = 1
                now += 1
            end
        else
            ans = 0
            break
        end
    end
            
end
puts ans