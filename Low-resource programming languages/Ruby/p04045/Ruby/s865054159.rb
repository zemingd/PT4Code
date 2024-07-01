n, k = gets.chomp.split
ds = gets.chomp.split.map(&:to_i)
memo = [true] * 10
for d in ds
  memo[d] = false
end

n = n.to_i
while true
  s = n.to_s
  ok = true
  s.chars.each{|c|
    idx = c.to_i
    if not memo[idx]
      ok = false
    end
  }
  if ok
    puts s
    break
  end
  n += 1
end
