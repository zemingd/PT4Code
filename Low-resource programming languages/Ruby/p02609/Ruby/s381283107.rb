n = gets.to_i
x = gets.to_i(2)

def popcount(x)
  cnt = 0
  while x > 0
    cnt += 1 if x[0] == 1
    x >>= 1
  end
  return cnt
end

$memo = {0 => 0}
def f(x)
  $memo[x] ||= f(x % popcount(x)) + 1
end


1.upto(n) do |i|
  y = x ^ (1 << (n - i))
  p f(y)
end