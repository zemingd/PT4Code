N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

res = Array.new(N, -1)
(N - 1).downto(0).each do |i|
  # We want to test the multiple of i
  r = 0  # This is the amount of value larger than i
  k = 2
  while (k * (i + 1) <= N) do
    r += res[k * (i + 1) - 1]
    k += 1
  end
  
  if (r % 2) == a[i]  # parity match
    res[i] = 0
  else
    res[i] = 1
  end
end

cnt = 0
a = []
0.upto(res.size - 1).each do |i|
  if res[i] == 1
    cnt += 1
    a << i + 1
  end
end

# For Debug
# p res

p cnt
if cnt > 0
  print a.join(" ")
end