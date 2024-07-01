N = gets.to_i
X = gets.chomp
NUM = X.to_i(2)
X.reverse!

MEMO = {}

def popcount(n)
  MEMO[n] ||= begin
                cnt = 0
                loop do
                  break if n <= 0
                  cnt += 1 if n & 1 == 1
                  n = n >> 1
                end
                cnt
              end
end

MMEMO = {}

ans = []
N.times do |i|
  c = X[i]
  x = (c == '1') ? NUM - 2**i : NUM + 2**i

  result = 0

  loop do
    break if x == 0

    b = popcount(x)
    x = x % b
    result += 1
  end

  ans << result
end

ans.reverse!
puts ans
