n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(a.size, false)
c = Array.new(a.size)

# 次は i 番目を決定する
dfs = proc do |i|
  if i == n
    if c[n-2] ^ c[n-1] == c[0]
      true
    else
      false
    end
  else
    m = c[i-2] ^ c[i-1]
    j = a.index.with_index { |k,j| k == m && !b[j] }
    if j
      c[i] = a[j]
      b[j] = true
      dfs.(i+1)
    else
      false
    end
  end
end

c[0] = a[0]
b[0] = true

ans = false
lambda do
  (1..(n-1)).each do |i|
    c[1] = a[i]
    b[i] = true
    r = dfs.(2)
    if r
      ans = true
      return
    end
    b[i] = false
  end
end.()

if ans
  puts 'Yes'
else
  puts 'No'
end