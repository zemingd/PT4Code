n = gets.to_i
a = gets.split.map(&:to_i).sort!

check = Array.new(a.max + 1, true)

a.each_with_index do |x, i|
  t = 2
  if i > 0 && a[i] == a[i + 1]
    t = 1
  end

  while x * t <= check.length do
    check[x * t] = false
    t += 1
  end
end

ans = 0
a.each do |x|
  ans += 1 if check[x]
end

puts ans