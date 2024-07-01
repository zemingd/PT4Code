a,b,c,d,e,f = gets.split.map(&:to_i)

dp = Array.new(f+1).map{Array.new(f/2+1,false)}
dp[0][0] = true

dp.each_with_index do |x,i|
    x.each_with_index do |y,j|
        next unless y
        dp[i+100*a][j] = true if i + 100*a + j <= f
        dp[i+100*b][j] = true if i + 100*b + j <= f
        next if i == 0
        dp[i][j+c] = true if 100 * (j+c) / i.to_f <= e && i + j + c <= f
        dp[i][j+d] = true if 100 * (j+d) / i.to_f <= e && i + j + d <= f
    end
end

max = 0
ans = "0 0"
dp.each_with_index do |x,i|
    next unless r = x.rindex(true)
    if (z = 100 * r / (i + r).to_f) > max
        max = z
        ans = "#{i+r} #{r}"
    end
end

puts ans