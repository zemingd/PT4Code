N = gets.to_i
A = gets.split.map(&:to_i)

plus = []
minus = []
zero_cnt = 0
ans = 0

A.each.with_index(1) do |a, i|
  v = a - i
  ans += v.abs

  if v > 0
    plus << v
  elsif v < 0
    minus << v.abs
  else
    zero_cnt += 1
  end
end

plus.sort!
minus.sort!
pos = 0

loop do
  ps = plus.size
  ms = minus.size

  if ps + zero_cnt < ms
    d = minus.shift
    ans -= (d - pos) * (ms - ps - zero_cnt)
    pos = d
  elsif ps > ms + zero_cnt
    d = plus.shift
    ans -= (d - pos) * (ps - ms - zero_cnt)
    pos += d
  else
    break
  end

  zero_cnt += 1
end

puts ans
