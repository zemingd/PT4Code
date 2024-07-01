n = gets.to_i
d = gets.split.map(&:to_i)
if d[0] != 0
    ans = 0
else
    if n == 1
        ans = 1
    elsif n == 2
        ans = 1 if d[1] == 1
        ans = 0 if d[1] != 1
    else
        d.sort!
        c = 1
        now = 1
        prev = 1
        ans = 1
        1.upto(n-2) do |i|
            if d[i] == now
                if d[i] == d[i+1]
                    c += 1
                    ans = ans * (prev**c) if i == n-2
                else
                    ans = ans * (prev**c)
                    ans = ans * c if i == n-2 
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
end
puts ans%998244353