n=gets.to_i
h=gets.split.map(&:to_i)

cnt = 0
prev = h[0]
ans = 0
h[1..-1].each_with_index do |hi, i|
  if prev >= hi
    prev = hi
    cnt += 1
  else
    ans = [ans, cnt].max
    cnt = 0
    prev = hi
  end
end
ans = [ans, cnt].max
p ans