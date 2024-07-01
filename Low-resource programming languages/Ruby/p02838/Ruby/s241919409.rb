N = gets.chomp.to_i

p = Hash.new(0)
q = Hash.new(0)

A = gets.chomp.split.map(&:to_i)

max_A = A.max
l = max_A.to_s(2).length

N.times do |i|
  num = A[i]

  1.upto(l) do |d|
    if num % 2 != 0
      p[d] += 1
    else
      # 0のとき
      q[d] += 1
    end

    num /= 2
  end
end

ans = 0
MOD = 10**9 + 7

1.upto(l) do |i|
  ans += p[i] * q[i] * 2**(i-1)
  ans %= MOD
end

p ans
