#全探索＝＝TLE（たぶん）
N = gets.to_i
num = gets.strip.split.map(&:to_i)
ary = Array.new(N,0)
ary[0] = num[0]
s = 1
for i in 1..N-1
  if ary[i-1] > num[i]
    ary[i] = num[i]
    s += 1
  end
end
puts s