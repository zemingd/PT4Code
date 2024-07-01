N,M,K = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

s = Array.new(N+1)
s[0] = 0
0.upto(N-1) do |i|
  s[i+1] = s[i] + a[i]
end

t = Array.new(M+1)
t[0] = 0
0.upto(M-1) do |i|
  t[i+1] = t[i] + b[i]
end

ans = 0
ary = Array.new(N+1)
for x in 0..N
  k =  M
  if K < s[x] then
    while t[k] > K do
      k -= 1
      if k == 0 then
        break
      end
    end
    ary[x] = k
  else
    while t[k] > (K-s[x]) do
      k -= 1
      if k == 0 then
        break
      end
    end
    ary[x] = k+x
  end
end
puts ary.max