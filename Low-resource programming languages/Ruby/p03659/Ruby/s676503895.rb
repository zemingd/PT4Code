N = gets.to_i
AS = gets.split.map(&:to_i)

MAX = 2 * 10**5 * 10**9
dp = Array.new(2 * 10**5 + 1, MAX+1)

s = 0
a = AS.inject(:+)
diff = 0

index = 1
while i = AS.shift
  break if AS.empty?
  s += i
  a -= i
  dp[index] = (s - a).abs
  index += 1
end

puts(dp.min)