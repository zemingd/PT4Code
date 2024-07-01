n = gets.to_i
d = gets.split.map(&:to_i)
h = Array.new(n, 0)
if d[0] != 0
  puts 0
else
  flag = true
  for i in 1...n do
    if d[i] == 0
      flag = false
      break
    end
  end
  if !flag
    puts 0
  else
    max_d = 0
    for i in 0...n do
      h[d[i]] += 1
      max_d = d[i] if max_d < d[i]
    end
    count = 1
    for i in 1..max_d do
      count = count * (h[i - 1] ** h[i]) % 998244353
    end
    puts count
  end
end
