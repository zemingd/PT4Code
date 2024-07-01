n = gets.to_i; a = Array.new(n)
n.times {|i| a[i] = gets.to_i}
res = 0; index = 0
until index == 1
  index = a[index] - 1; res += 1
  if res >= n
    res = -1; break
  end
end
puts res
