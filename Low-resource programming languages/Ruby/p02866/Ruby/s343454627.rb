mod = 998244353
n = gets.to_i
d = gets.split.map{|e| e.to_i}

if d[0] != 0
    puts 0
else
    h = Array.new(n+1,0)
    max = 0
    d.each do |e| 
        h[e] += 1
        max = e if max < e
    end

    if h[0] != 1
        puts 0
    else
        ans = 1
        1.upto(max) do |i|
            ans = (ans * h[i-1] ** h[i]) % mod
        end
        puts ans
    end
end