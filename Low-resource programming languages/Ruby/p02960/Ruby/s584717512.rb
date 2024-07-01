s = gets.chomp
s = '?' * (10**5)

N = 13

mod = 10**9 + 7

dp = Array.new(13, 0)

dp[0] = 1

s.chars.each do |c|
  nextdp = Array.new(13, 0)

  dp.each_with_index do |b, num|
    if c == '?'
      10.times do |i|
        nextdp[(num * 10 + i) % N] += b
      end
    else
      nextdp[(num * 10 + c.to_i) % N] += b
    end
  end

  13.times do |n|
    nextdp[n] = nextdp[n] % mod
  end

  dp = nextdp
end

puts dp[5]
