n = gets.to_i
a = gets.split.map(&:to_i)
b = Hash.new { 0 }
a.each do |m|
  b[m] += 1
end
c = Array.new(a.size)

# 次は i 番目を決定する
dfs = proc do |i|
  # p [:dfs, i, c, b]
  if i == n
    if c[n-2] ^ c[n-1] == c[0]
      true
    else
      false
    end
  else
    m = c[i-2] ^ c[i-1]
    if b[m] > 0
      c[i] = m
      b[m] -= 1
      dfs.(i+1)
    else
      false
    end
  end
end

c[0] = a[0]
b[a[0]] -= 1

ans = false
bak = b.dup
lambda do
  (1..(n-1)).each do |i|
    b = bak.dup
    c[1] = a[i]
    b[a[i]] -= 1
    r = dfs.(2)
    if r
      ans = true
      return
    end
  end
end.()

if ans
  puts 'Yes'
else
  puts 'No'
end