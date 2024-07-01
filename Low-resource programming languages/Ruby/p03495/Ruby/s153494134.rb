_, k, *a = $stdin.read.split.map(&:to_i)
uniqa = a.uniq

h = {}
len = 0
uniqa.each do |x|
  c = a.count x
  h[x] = c
  len += 1
end

diff = len - k
if diff <= 0
  p 0
  exit
end
ans = 0
(h.sort { |(_, v1), (_, v2)| v1 <=> v2 }.take diff).each do |arr|
  ans += arr[1]
end

p ans