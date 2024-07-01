n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
n.times do |i|
  h[a[i]] += 1
end
sum = 0
h.each do |k, v|
  sum += v * (v - 1) / 2
end
n.times do |i|
  ans = sum
  h.each do |k, v|
    if a[i] == k
      ans -= v * (v - 1) / 2
      ans += (v - 1) * (v - 2) / 2
    end
  end
  puts ans
end