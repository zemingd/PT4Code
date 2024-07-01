s = gets.chomp

mod = 10 ** 9 + 7
n = s.length

dp = Array.new(13, 0)
dp[0] = 1

(1..n).each do |i|
    ch = s[i-1]
    ndp = Array.new(13, 0)
    if ch != '?'
        num = ch.to_i
        (0...13).each do |m|
            ndp[(m * 10 + num) % 13] += dp[m]
        end
    else
        (0..9).each do |num|
            (0...13).each do |m|
                ndp[(m * 10 + num) % 13] += dp[m]
            end
        end
    end
    dp = ndp.map { |x| x % mod }
end

puts dp[5]