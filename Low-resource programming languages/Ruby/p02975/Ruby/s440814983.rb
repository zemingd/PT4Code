n = gets.to_i
a = gets.split.map(&:to_i)
b = Hash.new { 0 }
a.each.with_index do |m, i|
  if i == 0 || i == n-1
    next
  end
  b[m] += 1
end
c = Array.new(a.size)

# 次は i 番目を決定する
dfs = lambda do |i|
  while true
    m = c[i-2] ^ c[i-1]
    if i == n
      (2..i-1).each do |j|
        b[c[j]] += 1
      end
      return c[0] == m
    else
      if b[m] > 0
        c[i] = m
        b[m] -= 1

        i = i + 1 # dfs.(i+1)
        next
      else
        (2..i-1).each do |j|
          b[c[j]] += 1
        end
        return false
      end
    end
  end
end

c[0] = a[0]

ans = false
lambda do
  (1..(n-1)).each do |i|
    c[1] = a[i]
    b[a[i]] -= 1
    r = dfs.(2)
    b[a[i]] += 1
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