s = gets.chomp!.split("").map{|x| x == '?' ? -1 : x.to_i}
l = s.size
dp = Array.new(l+1).map{Array.new(13,0)}
dp[0][0] = 1

l.times do |i|
    c = s[i]
    10.times do |key|
        if c == -1 || c == key then
            13.times do |j|
                dp[i+1][(j*10+key) % 13] += dp[i][j] % (10 ** 9 + 7) 
            end
        end
    end
    p dp[i+1]
end

puts dp[l][5] % (10 ** 9 + 7)