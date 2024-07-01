n, k = gets.split.map(&:to_i)
s = Array.new(100002, 0)
n.times do
  a, b = gets.split.map(&:to_i)
  s[a - 1] += b
end
100001.times do |i|
  k -= s[i]
  if k <= 0
    puts i + 1
    exit
  end
end
