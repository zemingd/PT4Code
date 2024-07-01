N = gets.to_i
A = gets.split.map!(&:to_i)
K = 60
MOD = 10**9 + 7
r = 1
ans = 0
K.times do |k|
  zeros = 0
  ones = 0
  A.each do |a|
    if a[k] == 1
      ones += 1
    else
      zeros += 1
    end
  end

  ans += ones * zeros * r
  ans %= MOD
  r <<= 1
end

puts ans
